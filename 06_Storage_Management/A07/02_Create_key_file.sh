#Working on ubuntu1 in a root

sudo -i

#Check the device
lsblk



parted /dev/sdd mklabel mkpart primary 0% 100% 

mkfs.xfs /dev/sdd1

mkdir /key

mount /dev/sdd1 /mnt

dd if=/dev/urandom of=/mnt/keyfile bs=1024 count=4 

chmod 400 /mnt/keyfile



We can use a key file to unlock encrypted partitions. We will use the smaller /dev/sdd as our key
partition. The idea being that this would be removable media and we can then only access the
encrypted data if the removable media is attached. Employees should never store the
removable media with their laptops for security.