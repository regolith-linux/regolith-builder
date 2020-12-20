#!/bin/bash
# This script can be used to generate Debian packages and add them to a local debian repository.

# Input Parameters
if [ "$#" -lt 5 ]; then
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

source_pkg_exists() {
    SRC_PKG=$(reprepro --basedir "$REPO_PATH" listfilter "$DIST_CODENAME" "\$Source (== $0), \$Version (== $1), \$Architecture (== source)")

    if [ -z "$SRC_PKG" ]; then
        return 1
    else
        return 0
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

    if source_pkg_exists $packageName $version; then
        echo "Ignoring source package, already exists in target repository"
    else 
        print_banner "Ingesting source package ${packageModel[packageName]} into $REPO_PATH"
        reprepro --basedir "$REPO_PATH" include "$DIST_CODENAME" "$DEB_SRC_PKG_PATH"
    fi

    PKG_ARCH="amd64"
    DEB_CONTROL_FILE="$BUILD_DIR/${packageModel[buildPath]}/debian/control"
    cat $DEB_CONTROL_FILE | grep ^Package: | cut -d' ' -f2 | while read -r bin_pkg; do 
        DEB_BIN_PKG_PATH="$(pwd)/${bin_pkg}_${version}_${PKG_ARCH}.deb"
        print_banner "Ingesting binary package ${bin_pkg} into $REPO_PATH"
        reprepro --basedir "$REPO_PATH" includedeb "$DIST_CODENAME" "$DEB_BIN_PKG_PATH"
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
typeset -A copyModel
cd $BUILD_DIR

cat "$PACKAGE_MODEL_FILE" | jq -rc '.packages[]' | while IFS='' read -r package; do
    while IFS== read -r key value; do
        packageModel["$key"]="$value"
    done < <( echo $package | jq -r 'to_entries | .[] | .key + "=" + .value')

    if [[ ! -z "$PACKAGE" && "$PACKAGE" != "${packageModel[packageName]}" ]]; then
        continue
    fi

    checkout
    if dist_valid; then
        stage_source
        build_src_package
        build_bin_package
        publish_deb
    else
        echo "dist codename does not match in package changelog, ignoring ${packageModel[packageName]}."
    fi
done