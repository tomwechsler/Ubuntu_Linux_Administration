#!/bin/bash
sudo apt -y install \
 bridge-utils \
 libvirt-clients \
 libvirt-daemon \
 qemu \
 qemu-kvm \
 cockpit \
 cockpit-machines

echo "Dont forget to add your user account to the libvirt and kvm groups"
