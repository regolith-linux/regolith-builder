#!/bin/bash
# This script adapted from https://github.com/mvallim/live-custom-ubuntu-from-scratch
# Credit: Marcos Tischer Vallim

set -x
set -e

mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts

export HOME=/root
export LC_ALL=C
export DEBIAN_FRONTEND=noninteractive

echo "regolith" > /etc/hostname

cat <<EOF > /etc/apt/sources.list
deb http://us.archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse

deb http://us.archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse

deb http://us.archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse
EOF

apt-get update
apt-get install -y libterm-readline-gnu-perl systemd-sysv

dbus-uuidgen > /etc/machine-id
ln -fs /etc/machine-id /var/lib/dbus/machine-id

dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl

apt-get -y upgrade

apt-get install -y debconf-utils
debconf-set-selections < debconf-selections.txt

apt-get install -y \
    ubuntu-standard \
    casper \
    lupin-casper \
    discover \
    laptop-detect \
    os-prober \
    network-manager \
    resolvconf \
    net-tools \
    wireless-tools \
    wpagui \
    locales \
    linux-generic \
    software-properties-common

add-apt-repository -y ppa:regolith-linux/unstable

apt-get install -y \
    ubiquity \
    ubiquity-casper \
    ubiquity-frontend-gtk \
    ubiquity-slideshow-regolith

apt-get install -y \
    alsa-base \
    eog \
    evince \
    file-roller \
    fprintd \
    gedit \
    gnome-font-viewer \
    gnome-screenshot \
    htop \
    i3xrocks-cpu-usage \
    i3xrocks-memory \
    i3xrocks-net-traffic \
    i3xrocks-time \
    libmutter-6-0 \
    lightdm \
    lightdm-gtk-greeter \
    memtest86+ \
    nautilus \
    neofetch \
    plymouth-theme-regolith \
    plymouth-themes \
    regolith-lightdm-config \
    regolith-system \
    software-properties-gtk \
    ubiquity \
    ubiquity-frontend-gtk \
    ubiquity-slideshow-regolith \
    update-manager \
    vim \
    xserver-xorg-input-libinput

apt-get purge -y \
    aisleriot \
    atril \
    blueman \
    catfish \
    engrampa \
    gdm3 \
    gnome-mahjongg \
    gnome-mines \
    gnome-shell \
    gnome-sudoku \
    greybird-gtk-theme \
    hitori \
    libreoffice-base-core \
    libreoffice-calc \
    libreoffice-common \
    libreoffice-core \
    libreoffice-gnome \
    libreoffice-gtk3 \
    libreoffice-math \
    libreoffice-style-elementary \
    libreoffice-style-galaxy \
    libreoffice-style-tango \
    libreoffice-writer \
    libxfce4panel-2.0-4 \
    libxfce4ui-1-0 \
    libxfce4ui-2-0 \
    libxfce4ui-common \
    libxfce4ui-utils \
    libxfce4util-bin \
    libxfce4util-common \
    libxfce4util7 \
    mate-calc \
    mate-calc-common \
    mousepad \
    mugshot \
    numix-gtk-theme \
    pidgin \
    pidgin-data \
    pidgin-libnotify \
    pidgin-otr \
    plymouth-theme-xubuntu-logo \
    plymouth-theme-xubuntu-text \
    ristretto \
    sgt-launcher \
    sgt-puzzles \
    shimmer-themes \
    snapd \
    thunar \
    thunar-archive-plugin \
    thunar-data \
    thunar-media-tags-plugin \
    thunar-volman \
    thunderbird \
    transmission-common \
    transmission-gtk \
    ubiquity-slideshow-ubuntu \
    ubiquity-slideshow-xubuntu \
    xfburn \
    xfce4-appfinder \
    xfce4-cpugraph-plugin \
    xfce4-dict \
    xfce4-indicator-plugin \
    xfce4-mailwatch-plugin \
    xfce4-netload-plugin \
    xfce4-notes \
    xfce4-notes-plugin \
    xfce4-notifyd \
    xfce4-panel \
    xfce4-places-plugin \
    xfce4-power-manager \
    xfce4-power-manager-data \
    xfce4-power-manager-plugins \
    xfce4-pulseaudio-plugin \
    xfce4-screenshooter \
    xfce4-session \
    xfce4-settings \
    xfce4-statusnotifier-plugin \
    xfce4-systemload-plugin \
    xfce4-taskmanager \
    xfce4-terminal \
    xfce4-verve-plugin \
    xfce4-weather-plugin \
    xfce4-whiskermenu-plugin \
    xfce4-xkb-plugin \
    xfpanel-switch \
    xfwm4 \
    xserver-xorg-input-synaptics \
    xubuntu-artwork \
    xubuntu-community-wallpapers \
    xubuntu-community-wallpapers-bionic \
    xubuntu-core \
    xubuntu-default-settings \
    xubuntu-desktop \
    xubuntu-docs \
    xubuntu-icon-theme \
    xubuntu-live-settings \
    xubuntu-wallpapers

apt-get autoremove -y

#configure the boot screen
update-alternatives --set default.plymouth /usr/share/plymouth/themes/regolith/regolith.plymouth

dpkg-reconfigure locales -f noninteractive

dpkg-reconfigure resolvconf -f noninteractive

cat <<EOF > /etc/NetworkManager/NetworkManager.conf
[main]
rc-manager=resolvconf
plugins=ifupdown,keyfile
dns=dnsmasq

[ifupdown]
managed=false
EOF

dpkg-reconfigure network-manager

truncate -s 0 /etc/machine-id

rm /sbin/initctl
dpkg-divert --rename --remove /sbin/initctl

apt-get clean

rm -rf /tmp/* ~/.bash_history

umount /proc
umount /sys
umount /dev/pts

export HISTSIZE=0
