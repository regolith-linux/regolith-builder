#!/bin/bash

# Input Parameters
if [ "$#" -lt 3 ]; then
    echo "Usage: promote.sh <source stage> <target stage> <release name> <package name>"
    exit 1
fi 

SOURCE_STAGE="~regolith-linux/ubuntu/$1"
TARGET_STAGE="~regolith-linux/ubuntu/$2"
VERSION_NAME=$3
PACKAGE_NAME=$4

if [[ "$SOURCE_STAGE" == "$TARGET_STAGE" ]]; then
    echo "Error, must specify different source/target stages"
    exit 1
else 
    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $VERSION_NAME"
    ./back-copy.sh $SOURCE_STAGE $VERSION_NAME $TARGET_STAGE $VERSION_NAME $PACKAGE_NAME
fi
