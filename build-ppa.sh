#!/bin/bash
# This script can be used to generate Debian packages of Regolith in a user-specified PPA.
# By doing this, anyone can create their own variants of the DE and/or distro.

# Input Parameters
if [ "$#" -lt 3 ]; then
    echo "This script builds Debian packages.  It uses a package model file that describes each package."
    echo "Each package is checked out of a git repo, source is downloaded, built, and then deployed to a PPA."
    echo "If no package name is specified from the model, all packages are built."
    echo "Usage: build.sh <package model> <target PPA> <temp build dir> [package]"
    exit 1
fi

source build-common.sh

PACKAGE_MODEL_FILE=$(realpath "$1")
PPA_URL=$2
BUILD_DIR=$3
PACKAGE=$4

ppa_package_exists() {
    cd $BUILD_DIR/${packageModel[buildPath]}
    full_version=$(dpkg-parsechangelog --show-field Version)    
    cd $BUILD_DIR    
    echo "Checking if ${packageModel[packageName]} $full_version is in the repo..."
    url="https://launchpad.net/~$PPA_USER/+archive/ubuntu/$PPA_NAME/+sourcefiles/${packageModel[packageName]}/$full_version/${packageModel[packageName]}_$full_version.dsc"

    echo "Looking for: $url"

    if curl --output /dev/null --silent --head --fail "$url"; then
        return 0
    else
        return 1
    fi
}

# Publish
ppa_publish() {
    print_banner "Publishing source package ${packageModel[packageName]}"
    cd $BUILD_DIR/${packageModel[buildPath]}
    version=$(dpkg-parsechangelog --show-field Version)
    cd $BUILD_DIR

    dput -f $PPA_URL ${packageModel[buildPath]}/../${packageModel[packageName]}\_$version\_source.changes
}

# PPA Copy
ppa_copy() {
    print_banner "Copying source package ${copyModel[packageName]} from ${copyModel[ppaUrl]}"

    for targetVersion in ${copyModel[targetVersions]//,/ }; do
        copy-package --from=${copyModel[ppaUrl]} --from-suite=${copyModel[sourceVersion]} --to=$PPA_URL --to-suite=$targetVersion -b -y ${copyModel[packageName]}
    done
}

# Main
set -e

env_check
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

TEMP1="$(echo $PPA_URL | cut -d':' -f2)"
PPA_USER="$(echo $TEMP1 | cut -d'/' -f1)"
PPA_NAME="$(echo $TEMP1 | cut -d'/' -f3)"

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
    if ppa_package_exists; then
        echo "Package already in PPA, aborting."
    else
        stage_source
        build_deb_package
        ppa_publish
    fi
done

cat $PACKAGE_MODEL_FILE | jq -rc '.copies[]' | while IFS='' read -r copy; do
    while IFS== read -r key value; do
        copyModel["$key"]="$value"
    done < <( echo $copy | jq -r 'to_entries | .[] | .key + "=" + .value')

    if [[ ! -z "$PACKAGE" && "$PACKAGE" != "${copyModel[packageName]}" ]]; then
        continue
    fi

    ppa_copy
done
