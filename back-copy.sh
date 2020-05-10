#/bin/bash
# This script is for copying packages across Ubuntu versions.

back_copy() {
    for PACKAGE in ${PACKAGES//,/ }; do
        echo "Copying $PACKAGE to $TARGET_PPA version $TARGET_VERSION"
        copy-package --from=$SOURCE_PPA --from-suite=$SOURCE_VERSION --to=$TARGET_PPA --to-suite=$TARGET_VERSION -b -y $PACKAGE
    done 
}

SOURCE_PPA=$1
SOURCE_VERSION=$2
TARGET_PPA=$3
TARGET_VERSION=$4
PACKAGES=$5

if [ -z "$PACKAGES" ]; then
    echo "Must specify packages."
    exit 1
fi

back_copy
