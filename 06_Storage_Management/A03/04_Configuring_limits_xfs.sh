#Working on ubuntu1 in a root session

sudo -i


umount /shared_xfs

vim /etc/fstab (add uquota mount option) 

mount -a

sudo -u vagrant fallocate -l20M /shared_xfs/file1


xfs_quota -x -c 'report -h' /shared_xfs

xfs_quota -x -c 'limit bsoft=25M bhard=30M vagrant' /shared_xfs

sudo -u vagrant fallocate -l8M /shared_xfs/file2

xfs_quota -x -c 'report -h' /shared_xfs

sudo -u vagrant fallocate -l8M /shared_xfs/file3






XFS quotas provide a way to monitor and control the usage of disk space on an XFS file system.
These quotas are enabled by specifying certain mount options when the file system is mounted.
The xfs_quota command is used to manage quotas and includes expert options (-x) that allow
for advanced reporting of usage and setting of limits. Hard limits set an absolute restriction on
usage, while soft limits can be exceeded temporarly during a configurable grace period.