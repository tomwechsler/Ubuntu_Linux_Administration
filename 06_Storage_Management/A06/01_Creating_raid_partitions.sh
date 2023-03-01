#Working on ubuntu1 in a root session

#RAID 1 consists of an exact copy (or mirror) of a set of data on two or more disks
#RAID 5 consists of block-level striping with distributed parity (minimum of three disks needed)
#RAID 6 extends RAID 5 by adding another parity block; thus, it uses block-level striping with two parity 
#blocks distributed across all member disks (minimum of four disks needed)

sudo -i

fallocate -l 500M /root/mirror1 
fallocate -l 500M /root/mirror2 

diska=$(losetup -f /root/mirror1 --show)

parted $diska mklabel msdos \

cat /proc/mdstat



We will create two new disk files which we can later use for RAID. On each disk we will create a
partition that as marked to be used with RAID. This, like LVM, is more documenting the system
rather than and actual requirement. RAID devices are defined in the /proc/mdstat file which
should not have any devices.

