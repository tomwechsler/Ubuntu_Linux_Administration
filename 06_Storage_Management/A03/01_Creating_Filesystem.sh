#Working on ubuntu1

#Filesystem Limitations:
#EXT4 1EB (1000PB); Max file size 16TB
#XFS 18EB; Max file size 9EB

#List the block devices
lsblk

lsblk -f

#Create a filesystem
sudo mkfs.ext4 /dev/loop3p1

#If we run again, we get a warning
sudo mkfs.ext4 /dev/loop3p1

#Create a filesystem
sudo mkfs -t TABTAB

sudo mkfs -t xfs /dev/loop3p1 #If we choose the wrong partition

sudo mkfs -t xfs /dev/loop3p2

#The block devices, but no mount point for our partitions
lsblk -f



