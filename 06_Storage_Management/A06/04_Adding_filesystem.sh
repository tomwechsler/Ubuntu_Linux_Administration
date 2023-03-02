#Working on ubuntu1 in a root session

sudo -i

#Check the block device
lsblk

lsblk -f

#Create the filesystem
mkfs.xfs /dev/md0

#Create a mount point
mkdir /shared_raid

#Mount the raid
mount /dev/md0 /shared_raid

#Check the size
df -h /shared_raid

#We need the UUID
lsblk -f
#or
blkid /dev/md0

#Edit the fstab file
vim /etc/fstab

UUID=ff.. /shared_raid xfs defaults 0 0 

#Save and exit

#Read the fstab config
mount -a

#List in an other way
df -h -x devtmpfs -x tmpfs

#And test
reboot

sudo -i 

df -h -x devtmpfs -x tmpfs



RAID devices are mounted in the same way as other filesystems. There is an argument the the
device name is assigned in the configuration file allowing us to use the device name in-place of
the UUID. The UUID is still a reliable mechanism.