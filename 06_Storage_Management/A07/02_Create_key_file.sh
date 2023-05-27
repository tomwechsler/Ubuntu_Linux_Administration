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



