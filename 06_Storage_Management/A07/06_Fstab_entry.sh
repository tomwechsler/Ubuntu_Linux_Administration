#Working on ubuntu1 in a root session

sudo -i

#Edit the fstab file
sudo vim /etc/fstab

#/dev/mapper/data /shared_crypt xfs noauto,user 0 0

#Save and exit

#Reboot
reboot

#Test the mount
mount /shared_crypt

ls /shared_crypt



We can allow the user to mount the encrypted device and have it set to only mount manually.
On a reboot the device will be decrypted by the key file and systemd ans as a user I can mount
the data when needed. Remember though, this is a demonstration and the key file always
should be on a different device.