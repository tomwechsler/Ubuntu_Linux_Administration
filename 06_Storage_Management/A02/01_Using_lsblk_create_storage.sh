#Start with the blcok devices
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




Block devices are special device files that connect the kernel module to the physical storage.
When looking at the device file the normal file size is replaced with module information. The
major number is assigned by the Linux Kernel organization to the module developers who
maintain the minor version.

Disk files can be used as block devices and in some distributions, including Ubuntu, it is
common to see them in use. We can also create out own files and link them to loop block
devices.