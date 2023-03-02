#Working on ubuntu1 in a root

sudo -i

#Check the device
lsblk

#Create a partition
parted /dev/sdd mklabel msdos mkpart primary 0% 100% print

#Create a filesystem
mkfs.xfs /dev/sdd1

#Create directory
mkdir /key

#Temporary mount
mount /dev/sdd1 /mnt

#Generate random input to create the keyfile
dd if=/dev/urandom of=/mnt/keyfile bs=1024 count=4 

#Change the mode
chmod 400 /mnt/keyfile

#Unmount /mnt
umount /mnt



We can use a key file to unlock encrypted partitions. We will use the smaller /dev/sdd as our key
partition. The idea being that this would be removable media and we can then only access the
encrypted data if the removable media is attached. Employees should never store the
removable media with their laptops for security.