#Working on ubuntu1 in a root session

sudo -i

#Show memory (no swap)
free -h

#We create some new files
fallocate -l 500M /root/disk2 
fallocate -l 500M /root/disk3

#What do we have
ls -lh disk*

#The losetup (losetup is used to associate loop devices with regular files or block devices)
losetup

#Create a variable with the new loop device infos
disk=$(losetup -f /root/disk2 --show) #-f = losetup will find an available loop device

#Echo the variable
echo $disk

#Create a partition
parted $disk mklabel msdos mkpart primary 0% 100% 

#Setup a swap area
mkswap ${disk}p1 #mkswap sets up a Linux swap area on a device or in a file

blkid ${disk}p1

#List the swap space
swapon -s #-s = summary

swapon ${disk}p1 #swapon is used to specify devices on which paging and swapping are to take place

#List the swap info
swapon -s

#Create swap with a file
mkswap /root/disk3 

chmod 600 /root/disk3

swapon -p 10 /root/disk3 #-p = set the priority (Higher numbers indicate higher priority)

#The swap info
swapon -s

#Do we we have swap
free -h

#Disable swap
swapoff -a #-a flag is given, swapping is disabled on all known swap devices and files

#The swap info
swapon -s

#To make it permanent
blkid

vim /etc/fstab

UUID=<UUDI> swap swap pri=10 0 0

#Save and exit

#Check swap
swapon -s
swapon -a #Reads in the fstab file
swapon -s



