#!/bin/bash
# This script can be used to generate Debian packages and add them to a local debian repository.

# Input Parameters
if [ "$#" -lt 4 ]; then
    echo "This script builds Debian packages.  It uses a package model file that describes each package."
    echo "Each package is checked out of a git repo, source is downloaded, built, and then deployed to a PPA."
    echo "If no package name is specified from the model, all packages are built."
    echo "Usage: build.sh <package model> <repo path> <temp build dir> <distribution codename> [package]"
    exit 1
fi

source build-common.sh

PACKAGE_MODEL_FILE=$(realpath "$1")
REPO_PATH=$(realpath "$2")
BUILD_DIR=$3
DIST_CODENAME=$4
PACKAGE=$5

dist_valid() {
    cd $BUILD_DIR/${packageModel[buildPath]}


    TOP_CHANGELOG_LINE=$(head -n 1 debian/changelog)
    CHANGELOG_DIST=$(echo $TOP_CHANGELOG_LINE | cut -d' ' -f3 )

    cd - > /dev/null 2>&1
    # echo "Checking $DIST_CODENAME and $CHANGELOG_DIST"
    if [[ "$CHANGELOG_DIST" == *"$DIST_CODENAME"* ]]; then
        return 0
    else 
        return 1
    fi
}

update_changelog() {
    cd $BUILD_DIR/${packageModel[buildPath]}
    version=$(dpkg-parsechangelog --show-field Version)
    dch --distribution $DIST_CODENAME --newversion "${version}-1regolith-$(date +%s)" "Automated release."

    cd $BUILD_DIR
}

source_pkg_exists() {    
    SRC_PKG_VERSION=$(reprepro --basedir "$REPO_PATH" list "$DIST_CODENAME" "$1" | cut -d' ' -f3)

    SRC_PKG_BUILD_VERSION=$(echo $2 | cut -d'-' -f1)
    SRC_PKG_REPO_VERSION=$(echo $SRC_PKG_VERSION | cut -d'-' -f1)

    if [ "$SRC_PKG_REPO_VERSION" == "$SRC_PKG_BUILD_VERSION" ]; then
        return 0
    else
        return 1
    fi
}

# Publish
publish_deb() {    
    cd $BUILD_DIR/${packageModel[buildPath]}
    version=$(dpkg-parsechangelog --show-field Version)
    cd $BUILD_DIR

    DEB_SRC_PKG_PATH="$(pwd)/${packageModel[packageName]}_${version}_source.changes"
    
    if [ ! -f "$DEB_SRC_PKG_PATH" ]; then
        echo "Failed to find changes file."
    fi

    if source_pkg_exists "${packageModel[packageName]}" "$version"; then
        echo "Ignoring source package, already exists in target repository"
        return
    else 
        print_banner "Ingesting source package ${packageModel[packageName]} into $REPO_PATH"
        reprepro --basedir "$REPO_PATH" include "$DIST_CODENAME" "$DEB_SRC_PKG_PATH"
    fi

    PKG_ARCH="amd64,all"
    DEB_CONTROL_FILE="$BUILD_DIR/${packageModel[buildPath]}/debian/control"

    for target_arch in $(echo $PKG_ARCH | sed "s/,/ /g"); do        
        cat $DEB_CONTROL_FILE | grep ^Package: | cut -d' ' -f2 | while read -r bin_pkg; do 
            DEB_BIN_PKG_PATH="$(pwd)/${bin_pkg}_${version}_${target_arch}.deb"
            if [ -f "$DEB_BIN_PKG_PATH" ]; then
                print_banner "Ingesting binary package ${bin_pkg} into $REPO_PATH"
                reprepro --basedir "$REPO_PATH" includedeb "$DIST_CODENAME" "$DEB_BIN_PKG_PATH"
            else
                echo "Package $DEB_BIN_PKG_PATH does not exist for $target_arch"
            fi
        done
    done
}

# Main
set -e

env_check
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

print_banner "Generating packages in $BUILD_DIR"

typeset -A packageModel

cd $BUILD_DIR

cat "$PACKAGE_MODEL_FILE" | jq -rc '.packages[]' | while IFS='' read -r package; do
    while IFS== read -r key value; do
        packageModel["$key"]="$value"
    done < <( echo $package | jq -r 'to_entries | .[] | .key + "=" + .value')

    if [[ ! -z "$PACKAGE" && "$PACKAGE" != "${packageModel[packageName]}" ]]; then
        continue
    fi

    checkout
    update_changelog
    if dist_valid; then
        stage_source
        build_src_package
        build_bin_package
        publish_deb
    else
        echo "dist codename does not match in package changelog, ignoring ${packageModel[packageName]}."
    fi
done
