#!/bin/bash

# Input Parameters
if [ "$#" -lt 2 ]; then
    echo "Usage: promote.sh <source stage> <target stage> [package name]"
    exit 1
fi 

SOURCE_STAGE="~regolith-linux/ubuntu/$1"
TARGET_STAGE="~regolith-linux/ubuntu/$2"
if [ -z "$3" ]; then
    PACKAGE_SPEC="regolith-default-settings,i3-next-workspace,regolith-todo,regolith-compositor-picom-glx,dracula-gtk,gruvbox-gtk,plano-theme,regolith-unclutter-xfixes,arc-icon-theme,ayu-theme,cahuella,compton,fonts-jetbrains-mono,fonts-source-code-pro-ttf,i3-gaps-wm,i3-snapshot,i3ipc-python,i3xrocks,moka-icon-theme,nordic,paper-icon-theme,playerctl,regolith-compositor-compton-glx,regolith-compositor-none,regolith-compositor-xcompmgr,regolith-desktop,regolith-ftue,regolith-gdm3-theme,regolith-gnome-flashback,regolith-i3-gaps-config,regolith-i3xrocks-config,regolith-lightdm-config,regolith-rofi-config,regolith-rofication,regolith-st,regolith-styles,regolith-system,remontoire,rofi,solarc-theme,ubiquity-slideshow-ubuntu,unclutter-xfixes,xrescat"
else
    PACKAGE_SPEC=$3
fi

FIRST_VERSION="groovy"
SECOND_VERSION="hirsute"

echo "Copying $PACKAGE_NAME version $FIRST_VERSION to $SECOND_VERSION in $SOURCE_STAGE"
./back-copy.sh $SOURCE_STAGE $FIRST_VERSION $TARGET_STAGE $SECOND_VERSION $PACKAGE_SPEC
