#/bin/bash


back_copy() {
    for PACKAGE in ${PACKAGES//,/ }; do
        echo "Copying $PACKAGE to $TARGET_PPA version $TARGET_VERSION"
        copy-package --from=$SOURCE_PPA --from-suite=$SOURCE_VERSION --to=$TARGET_PPA --to-suite=$TARGET_VERSION -b -y $PACKAGE
    done 
}

SOURCE_PPA="~regolith-linux/ubuntu/unstable"
TARGET_PPA="~regolith-linux/ubuntu/unstable"
SOURCE_VERSION="eoan"
TARGET_VERSION="bionic"
PACKAGES="fonts-source-code-pro-ttf,moka-icon-theme,paper-icon-theme"
back_copy
