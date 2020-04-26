#!/bin/bash

# Input Parameters
if [ "$#" -lt 2 ]; then
    echo "Usage: promote-stage.sh <source stage> <target stage>"
    exit 1
fi 

set -x

SOURCE_STAGE="~regolith-linux/ubuntu/$1"
TARGET_STAGE="~regolith-linux/ubuntu/$2"
PACKAGE_SPEC="arc-icon-theme,ayu-theme,cahuella,compton,fonts-jetbrains-mono,fonts-source-code-pro-ttf,i3-gaps-wm,i3-snapshot,i3ipc-python,i3xrocks,moka-icon-theme,nordic,paper-icon-theme,playerctl,regolith-compositor-compton-glx,regolith-compositor-none,regolith-compositor-xcompmgr,regolith-desktop,regolith-ftue,regolith-gdm3-theme,regolith-gnome-flashback,regolith-i3-gaps-config,regolith-i3xrocks-config,regolith-lightdm-config,regolith-rofi-config,regolith-rofication,regolith-st,regolith-styles,regolith-system,remontoire,rofi,solarc-theme,ubiquity-slideshow-ubuntu,unclutter-xfixes,xrescat"
FIRST_VERSION="eoan"
SECOND_VERSION="bionic"
THIRD_VERSION="focal"

BUILDER_GRACE_PERIOD=900

if [[ "$SOURCE_STAGE" == "$TARGET_STAGE" ]]; then
    echo "Cannot promote to the same stage."
    exit 1
else
    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $FIRST_VERSION"
    ./back-copy.sh $SOURCE_STAGE $FIRST_VERSION $TARGET_STAGE $FIRST_VERSION $PACKAGE_SPEC

    # PPAs cannot copy multiple releaes of the same package concurrently.
    sleep $BUILDER_GRACE_PERIOD

    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $SECOND_VERSION"
    ./back-copy.sh $SOURCE_STAGE $SECOND_VERSION $TARGET_STAGE $SECOND_VERSION $PACKAGE_SPEC

    sleep $BUILDER_GRACE_PERIOD

    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $THIRD_VERSION"
    ./back-copy.sh $SOURCE_STAGE $THIRD_VERSION $TARGET_STAGE $THIRD_VERSION $PACKAGE_SPEC
fi
