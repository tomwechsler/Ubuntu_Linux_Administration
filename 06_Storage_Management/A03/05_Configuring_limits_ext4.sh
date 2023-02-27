#Working on ubuntu1 in a root session

sudo -i

#First we check the kernel version
uname -r

#Do we use the latest kernel
ls -l /boot

#If needed to use the latest kernel
reboot

#Check again
uname -r

#Do we have the modules
find /lib/modules/ -type f -name '*quota_v*.ko*'

#Install the packages
apt install linux-image-extra-virtual quota

#Do we have the modules
find /lib/modules/ -type f -name '*quota_v*.ko*'

#Reboot the system or load the modules
modprobe -v quota_v1 
modprobe -v quota_v2 

#Unmount
umount /shared_ext4

#There are two ways to enable quota support (this way generates a new UUID)
mkfs.ext4 -O quota /dev/loop3p1 #Copy the new UUID

#Edit the fstab file with the new UUID
vim /etc/fstab

#Save and exit

#The second way to support quota (no new UUID)
tune2fs -O quota /dev/loop3p1

#Use mount
mount -a

#Enable quota for all ext4 filesystems
quotaon -vua #-v = verbose, -u = user quota, -a = all filesystems

#Create the quota
equota vagrant

#Set the quota on blocks/soft/hard (20000 / 25000)

#Save and exit

#Generate a report
repquota -uv /shared_ext4

#By creating a new file system the permissions were removed.
ls -ld /shared_ext4
chmod 1777 /shared_ext4

#Create a file
sudo -u vagrant fallocate -l 18M /shared_ext4/file1

#Generate a report
repquota -uv /shared_ext4

#Create a file
sudo -u vagrant fallocate -l 4M /shared_ext4/file2

#Generate a report (we hit the soft limit)
repquota -uv /shared_ext4

#Create a file (does not work)
sudo -u vagrant fallocate -l 4M /shared_ext4/file3



Using EXT4, quotas is a little more complex. We need to make sure that we have the correct
modules installed. The latest version of the kernel will be installed with the modules. We need to
reboot to make sure that kernel is loaded and install the new modules and tools.