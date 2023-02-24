#Working on ubuntu1

#First we create the mount points
sudo mkdir -m 0000 /shared_ext4 /shared_xfs

#Check the perms and the inodes
ls -ld /shared_*

ls -ldi /shared_*

#We shoud not be able to change into the directories
cd /shared_ext4/

#Mount loop3p1
sudo mount /dev/loop3p1 /shared_ext4

#List the metadata => a different inode
ls -ldi /shared_ext4

#Change the permission
sudo chmod 1777 /shared_ext4

cd /shared_ext4

cd

#Mount loop3p2
sudo mount /dev/loop3p2 /shared_xfs

#Change the permission
sudo chmod 1777 /shared_xfs

#List the metadata
ls -ldi /shared_*



Mount points begin as directories in the Linux root filesystem. When mounted they inherit the
root file of the target filesystem becoming different files. The desired permissions should be set
on the mounted filesystem and not the unmounted mount point.