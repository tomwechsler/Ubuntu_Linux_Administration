#Start with the block devices
lsblk

#The sdb partition is vagrant specific

#List the filesystem and more
lsblk -f

#Mount the sdb
sudo mount /dev/sdb /mnt

#The content /mnt
ls /mnt

#Umount /mnt
sudo umount /mnt

#Use find
find /dev/ -type b

#Infos from sda
ls -l /dev/sda

#Major No = Kernel Module (8 = SCSI Driver Module)

#Lets create a sparse file (Sparse Files are a type of computer file that allows for efficient storage allocation for large data)
sudo fallocate -l 500M /root/disk1

#Check
sudo ls -lh /root/disk

#List the block device
lsblk

#Create a device file
sudo losetup /dev/loop3 /root/disk1

sudo losetup

#List the block device
lsblk



