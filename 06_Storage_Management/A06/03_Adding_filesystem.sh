#Working on ubuntu1 in a root session

sudo -i

mkfs.xfs /dev/md0

blkid /dev/md0


mkdir /shared_raid

echo 'UUID=ff.. /shared_raid xfs defaults 0 0' >> /etc/fstab

mount -a

df -h -x devtmpfs -x tmpfs



RAID devices are mounted in the same way as other filesystems. There is an argument the the
device name is assigned in the configuration file allowing us to use the device name in-place of
the UUID. The UUID is still a reliable mechanism.