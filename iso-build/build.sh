#!/bin/bash
# This script adapted from https://github.com/mvallim/live-custom-ubuntu-from-scratch
# Credit: Marcos Tischer Vallim

set -e

# Directory in which to write the ISO to.
ISO_ROOT=$1
TARGET_UBUNTU_VERSION=$2
ISO_IMAGE_FILENAME=$3
CHROOT_DIR=$ISO_ROOT/chroot

if [ -z "$ISO_ROOT" ]; then
  echo "Usage: iso-generator.sh [ISO root directory] [ubuntu version] [ISO file path]"
  exit 1
fi

if [ -z "$ISO_IMAGE_FILENAME" ]; then
  echo "Usage: iso-generator.sh [ISO root directory] [ubuntu version] [ISO file path]"
  exit 1
fi

if [ -z "$TARGET_UBUNTU_VERSION" ]; then
  echo "Usage: iso-generator.sh [ISO root directory] [ubuntu version] [ISO file path]"
  exit 1
fi

if [ -d "$ISO_ROOT" ]; then
  echo "$ISO_ROOT already exists.  Must specify non-existent target directory."
  exit 1
fi

if [[ -d "$ISO_IMAGE_FILENAME" || -f "$ISO_IMAGE_FILENAME" ]]; then
  echo "$ISO_IMAGE_FILENAME already exists.  Must specify non-existent target file."
  exit 1
fi

echo "######################################"
echo "# Setup build host"
echo "######################################"

sudo apt-get install \
    binutils \
    debootstrap \
    debootstick \
    mtools

mkdir $ISO_ROOT

echo "######################################"
echo "# Initialize chroot"
echo "######################################"

sudo debootstrap \
   --arch=amd64 \
   --variant=minbase \
   $TARGET_UBUNTU_VERSION \
   $CHROOT_DIR \
   http://us.archive.ubuntu.com/ubuntu/

sudo cp ./init-chroot.sh debconf-selections.txt $CHROOT_DIR/

sudo mount --bind /dev $CHROOT_DIR/dev
sudo mount --bind /run $CHROOT_DIR/run

echo "######################################"
echo "# Build chroot"
echo "######################################"

sudo chroot $CHROOT_DIR ./init-chroot.sh

sudo umount $CHROOT_DIR/dev
sudo umount $CHROOT_DIR/run

echo "######################################"
echo "# Build ISO"
echo "######################################"


debootstick --system-type installer --config-root-password-none $CHROOT_DIR $ISO_IMAGE_FILENAME

echo "ISO build complete: $ISO_IMAGE_FILENAME"