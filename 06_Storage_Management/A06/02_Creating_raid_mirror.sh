#Working on ubuntu1 in a root session

sudo -i

cat /proc/mdstat

mdadm -D --scan

mdadm --create /dev/md0 --level=mirror --raid-devices=2 $diska $diskb

cat /proc/mdstat


mdadm -D /dev/md0

mdadm -Db /dev/md0 >> /etc/mdadm/mdadm.conf 

update-initramfs -u



RAID devices are managed using the mdadm command. We also need to update the initramfs to
support RAID on boot. We add the RAID drivers to the ramdisk file used on boot.