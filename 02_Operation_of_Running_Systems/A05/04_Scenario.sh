sudo -i
fallocate -l 1G /root/disk1
losetup /dev/loop10 /root/disk1
parted /dev/loop10 mklabel msdos mkpart primary 0% 100%
lsblk



Creating our own disk file for use as storage in Ubuntu is easy. We use fallocate to create the
file. Although the file is persistent it will need to be linked using losetup each time on startup
and the partition table read with partprobe. Creating a service unit can automate the tasks for
us.