#Working on ubuntu1 in a root session

sudo -i

#Disable swap
swapoff -a
swapon -s

#What about the fstab file
cat /etc/fstab

#We have to delete the swap entry (but first we check what we are doing)
sed '/swap/d' /etc/fstab

sed -i '/swap/d' /etc/fstab #-i = in-place edit

#Did it work
!ca

#List the losetup info
losetup

#Wipe the files
wipefs -a --force /root/disk2 #-a = Erase all available signatures
wipefs -a --force /root/disk3 





We can reuse the files we created for swap. Turning swap off and removing the entry from the
fstab file.