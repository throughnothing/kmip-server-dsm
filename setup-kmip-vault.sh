#!/bin/sh

# Setup this drive with:
#
# dd if=/dev/urandom of=vaultfile.img bs=1M count=50
# cryptsetup --verify-passphrase luksFormat vaultfile.img
# sudo cryptsetup open --type luks vaultfile.img kmipvault
# sudo mkfs.ext4 -L kmipvault /dev/mapper/kmipvault
# sudo cryptsetup close myvault

sudo cryptsetup open --type luks vaultfile.img kmipvault
sudo mount /dev/mapper/kmipvault ./kmipvault
