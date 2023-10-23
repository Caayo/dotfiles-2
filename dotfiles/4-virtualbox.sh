#!/bin/bash
#                                    
# by Stephan Raabe (2023)
# ------------------------------------------------------
# Install Script for dotfiles and configuration
# yay must be installed
# ------------------------------------------------------

# ------------------------------------------------------
# Load Library
# ------------------------------------------------------
source $(dirname "$0")/scripts/library.sh
clear
echo "     _       _    __ _ _            "
echo "  __| | ___ | |_ / _(_) | ___  ___  "
echo " / _' |/ _ \| __| |_| | |/ _ \/ __| "
echo "| (_| | (_) | |_|  _| | |  __/\__ \ "
echo " \__,_|\___/ \__|_| |_|_|\___||___/ "
echo "                                    "
echo "by Stephan Raabe (2023)"
echo "-------------------------------------"
echo ""


echo "-> Installing virtualbox guest additions."
echo ""
sudo pacman -S virtualbox-guest-iso
cd /usr/lib/virtualbox/additions/
sudo mkdir /mnt/iso

echo ""
echo "-> Mounting VBoxGuestAdditions.iso."
sudo mount -o loop /usr/lib/virtualbox/additions/VBoxGuestAdditions.iso /mnt/iso
sudo /mnt/iso/VBoxLinuxAdditions.run
sudo umount -l /mnt/iso/

echo ""
echo "-> Unmounted VBoxGuestAdditions.iso."
cd
echo ""
echo "-> Virtualbox guest additions installed."
