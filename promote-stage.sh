#!/bin/bash

# Input Parameters
if [ "$#" -lt 2 ]; then
    echo "Usage: promote-stage.sh <source stage> <target stage> [package list]"
    exit 1
fi 

# set -x

SOURCE_STAGE="~regolith-linux/ubuntu/$1"
TARGET_STAGE="~regolith-linux/ubuntu/$2"
if [ -z "$3" ]; then
    PACKAGE_SPEC="arc-icon-theme,ayu-theme,cahuella,compton,fonts-jetbrains-mono,fonts-source-code-pro-ttf,i3-gaps-wm,i3-snapshot,i3ipc-python,i3xrocks,moka-icon-theme,nordic,paper-icon-theme,playerctl,regolith-compositor-compton-glx,regolith-compositor-none,regolith-compositor-xcompmgr,regolith-desktop,regolith-ftue,regolith-gdm3-theme,regolith-gnome-flashback,regolith-i3-gaps-config,regolith-i3xrocks-config,regolith-lightdm-config,regolith-rofi-config,regolith-rofication,regolith-st,regolith-styles,regolith-system,remontoire,rofi,solarc-theme,ubiquity-slideshow-ubuntu,unclutter-xfixes,xrescat"
else
    PACKAGE_SPEC=$3
fi
RELEASES="bionic,eoan,focal"

if [[ "$SOURCE_STAGE" == "$TARGET_STAGE" ]]; then
    echo "Cannot promote to the same stage."
    exit 1
else
    for RELEASE in ${RELEASES//,/ }; do
        echo "*** Promoting $PACKAGE_SPEC from $SOURCE_STAGE to $TARGET_STAGE version $RELEASE"
        ./back-copy.sh $SOURCE_STAGE $RELEASE $TARGET_STAGE $RELEASE $PACKAGE_SPEC
        sleep 1200
    done 
fi
