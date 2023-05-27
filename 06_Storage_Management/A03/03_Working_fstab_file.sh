#Working on ubuntu1

#Check the mounts
mount -t xfs

mount -t ext4

#List the block devices
lsblk -f

#Copy the UUID from loop3p1

#Edit the fstab file
sudo vim /etc/fstab

UUID="the uuid" /shared_ext4 ext4 defaults 0 0

:r!sudo blkid /dev/loop3p2 #Import the infos

#Edit the line

#Save and exit

#Umount
sudo umount /shared_ext4

sudo umount /shared_xfs

#But what about the fstab fields
man fstab

#List the block devices
lsblk -f

#Use the mount command
sudo mount -a

#List the block devices
lsblk -f







