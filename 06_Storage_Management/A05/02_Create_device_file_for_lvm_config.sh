#Working on ubuntu1 in a root session

sudo -i

#Create a variable with the new loop device infos
disk=$(losetup -f /root/disk2 --show) #-f = losetup will find an available loop device

echo $disk

#Create two partitions with the lvm flag
parted $disk mklabel msdos mkpart primary 0% 50% mkpart primary 50% 100% set 1 lvm on set 2 lvm on print

#Do we have lvm physical volumes => no setting the flag does not mean we have lvm physical volumes
pvs




We do not need to set the partitions type to LVM when partitioning a disk, but it does help
document the purpose of the partition. It had no effect on how LVMs are used on the system.
Setting the LVM flag does not make the partition a Physical Volume as shown by the pvs
command.