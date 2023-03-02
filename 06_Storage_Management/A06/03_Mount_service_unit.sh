#Working on ubuntu1 in a root session

sudo -i

#Check the loop numbers
losetup

#Creat the file (Make sure that the loop names fit)
vim raid-disk.service

#Copy the content from the example file

#Save and exit

#Copy the file
cp raid-disk.service /etc/systemd/system

#Reload the daemon
systemctl daemon-reload

#Enable our service unit
systemctl enable raid-disk.service

#Reboot and check
reboot

sudo -i

mdadm -D /dev/md0



You can create your own service unit or use the one supplied and 
modify it if you use a different loop device or backend file.