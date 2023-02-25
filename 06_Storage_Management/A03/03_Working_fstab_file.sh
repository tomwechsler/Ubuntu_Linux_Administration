#Working on ubuntu1

sudo blkid /dev/loop3p1 /dev/loop3p2

sudo vim /etc/fstab

sudo unmount /shared_ext4

sudo unmount /shared_xfs

sudo mount -a



Mounts are persisted within the /etc/fstab file, man 5 fstab. Device names may not be
persistent and prefenrence is to use the filesystem UUID rather than the device name to mount.
The UUID is part of the filesystem and does not change. Using mount -a we mount all
filesystems not currently mounted to test the fstab file is working.



