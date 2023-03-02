#Working on ubuntu1 in a root

sudo -i

#Check out the UUID for sdd1
lsblk -f

#Create the mount unit
vim key.mount

#Copy the content from the example and edit the UUID

#Save and exit

#Copy the file
cp key.mount /etc/systemd/system

#Reload the daemon
systemctl daemon-reload

#Enable the mount unit
systemctl enable key.mouint

#Reboot and proof
reboot

ls /key