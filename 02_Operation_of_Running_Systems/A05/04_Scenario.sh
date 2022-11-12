sudo -i

lsblk

fallocate -l 1G /root/disk1

ls -lh disk1

losetup /dev/loop10 /root/disk1

losetup

parted /dev/loop10 mklabel msdos mkpart primary 0% 100%

lsblk

#After a reboot the block device is not available

vagrant ssh ubuntu1

sudo -i

lsblk

ls

systemctl edit losetup.service --full --force

systemctl daemon-reload

lsblk

systemctl enable --now losetup

lsblk

reboot

vagrant ssh ubuntu1

lsblk



Creating our own disk file for use as storage in Ubuntu is easy. We use fallocate to create the
file. Although the file is persistent it will need to be linked using losetup each time on startup
and the partition table read with partprobe. Creating a service unit can automate the tasks for
us.