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
sudo unmount /shared_ext4

sudo unmount /shared_xfs

#But what about the fstab fields
man fstab

#List the block devices
lsblk -f

#Use the mount command
sudo mount -a

#List the block devices
lsblk -f



Mounts are persisted within the /etc/fstab file, man 5 fstab. Device names may not be
persistent and prefenrence is to use the filesystem UUID rather than the device name to mount.
The UUID is part of the filesystem and does not change. Using mount -a we mount all
filesystems not currently mounted to test the fstab file is working.



