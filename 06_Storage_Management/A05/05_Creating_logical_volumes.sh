#Working on ubuntu1 in a root session

sudo -i

#No logical volumes but a volume group
lvs

vgs

#Create a logical volume
lvcreate -v -n lv1 -L 300M vg1 #-L = Logical Volume Size in Units (M, G, T, etc.)

#List block devices
lsblk

#Create a filesystem
mkfs.xfs /dev/mapper/vg1-lv1

#Create a mount point
mkdir /shared_lvm

#Mount the volume
mount /dev/mapper/vg1-lv1 /shared_lvm

#Infos about the usage
df -h /shared_lvm

#Copy some files
find /usr/share/doc -type f -name '*.html' -exec cp {} /shared_lvm \;

#Infos about the usage
df -h /shared_lvm




Creating a logical volume initiates a new block device which we can access via a symlink
located in /dev/mapper. We can treat this as any other block device. adding a filesystem and
mounting it.