#!/bin/bash

# Input Parameters
if [ "$#" -lt 3 ]; then
    echo "Usage: promote.sh <source stage> <target stage> <package name>"
fi 

SOURCE_STAGE="~regolith-linux/ubuntu/$1"
TARGET_STAGE="~regolith-linux/ubuntu/$2"
PACKAGE_NAME=$3

FIRST_VERSION="eoan"
SECOND_VERSION="bionic"

BUILDER_GRACE_PERIOD=1200 # 20 minutes

if [[ "$SOURCE_STAGE" == "$TARGET_STAGE" ]]; then
    echo "Copying $PACKAGE_NAME version $FIRST_VERSION to $SECOND_VERSION in $SOURCE_STAGE"
    ./back-copy.sh $SOURCE_STAGE $FIRST_VERSION $TARGET_STAGE $SECOND_VERSION $PACKAGE_NAME
else 
    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $FIRST_VERSION"
    ./back-copy.sh $SOURCE_STAGE $FIRST_VERSION $TARGET_STAGE $FIRST_VERSION $PACKAGE_NAME

    # PPAs cannot copy multiple releaes of the same package concurrently.
    sleep $BUILDER_GRACE_PERIOD

    echo "Promoting $PACKAGE_NAME from $SOURCE_STAGE to $TARGET_STAGE version $SECOND_VERSION"
    ./back-copy.sh $SOURCE_STAGE $SECOND_VERSION $TARGET_STAGE $SECOND_VERSION $PACKAGE_NAME
fi
