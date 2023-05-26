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


