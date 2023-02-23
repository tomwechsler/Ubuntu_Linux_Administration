#Working on ubuntu1

#The link from the loop to the block device is not permanent

#List the devices
lsblk

#Delete the loop device (deletes also the partition)
sudo losetup -d /dev/loop3

#List the devices
lsblk

#Lets create a service unit (use the example file)
vim disk1.service

#Copy the file
sudo cp disk1.service /etc/systemd/system

#Now we need to reload the daemon
sudo systemctl daemon-reload

#The device is not yet available.
lsblk

#Start our unit
sudo systemctl enbale --now disk1.service

#Now it is
lsblk

#The see what we have done
sudo systemctl cat disk1.service
