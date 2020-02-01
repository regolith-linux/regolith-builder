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
if [ -z "$5" ]; then
    PACKAGES="regolith-compositor-compton-glx,
    regolith-compositor-none,
    regolith-compositor-xcompmgr,
    regolith-desktop,
    regolith-ftue,
    regolith-gdm3-theme,
    regolith-i3-gaps-config,
    regolith-i3xrocks-config,
    regolith-st,
    regolith-styles,
    regolith-rofication,
    remontoire,
    cahuella,
    fonts-source-code-pro-ttf,
    moka-icon-theme,
    paper-icon-theme,
    compton,
    i3-gaps-wm,
    i3-snapshot,
    i3ipc-python,
    i3xrocks,
    unclutter-xfixes,
    xrescat"
else
    PACKAGES=$5
fi

back_copy

## 3P package copies
# arc-icon-theme, 