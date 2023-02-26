#MSDOS = 4 Primary max. Size 2TB
#GPT (GUID Partition Table (GPT)) = theoretical 128 Partitions (SCSI Driver max 15 Partitions) max. Size 32EB

#Working on ubuntu1

#List the block device
lsblk

#Partition with fdisk
sudo fdisk /dev/loop3

#Now we have interactive utility => We create 1 Partition with the full size

#Does lsblk list the partition
lsblk

#We need partprobe
sudo partprobe /dev/loop3

#Now it does
lsblk

#Lets wipe
sudo wipefs -a /dev/loop3 # -a = all

#Partition with parted
sudo parted /dev/loop3 mklabel msdos mkpart primary 0% 50% mkpart primary 50% 100% print 

#Did it work
lsblk



The parted command can be used non-interactively to create partition tabled and partitions
and print the results. We can run them as 3 separate commands, or as here, as one command.

