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


