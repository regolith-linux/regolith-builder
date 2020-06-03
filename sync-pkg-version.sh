#!/bin/bash

# Input Parameters
if [ "$#" -lt 2 ]; then
    echo "Usage: sync-pkg-version.sh <stage> <package name>"
    exit 1
fi 

STAGE="~regolith-linux/ubuntu/$1"
PACKAGE_NAME=$2

FIRST_VERSION="bionic"
SECOND_VERSION="eoan"
THIRD_VERSION="focal"

BUILDER_GRACE_PERIOD=1200 # 20 minutes

echo "Copying $PACKAGE_NAME version $FIRST_VERSION to $SECOND_VERSION in $STAGE"
./back-copy.sh $STAGE $FIRST_VERSION $STAGE $SECOND_VERSION $PACKAGE_NAME

# PPAs cannot copy multiple releaes of the same package concurrently.
sleep $BUILDER_GRACE_PERIOD

echo "Copying $PACKAGE_NAME version $FIRST_VERSION to $THIRD_VERSION in $STAGE"
./back-copy.sh $STAGE $FIRST_VERSION $STAGE $THIRD_VERSION $PACKAGE_NAME
