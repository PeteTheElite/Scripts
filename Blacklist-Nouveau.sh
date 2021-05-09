#! /bin/bash

# This is to blacklist the Nouveau driver in order to install an NVidia driver

sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf" && sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf" && sudo update-initramfs -u && sudo reboot
