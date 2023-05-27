#Working on ubuntu1 in a root session

sudo -i

#Check the xfs mounts (we see no quota support)
mount -t xfs

#A remount would not help (-o = options)
mount -o remount,uquota /shared_xfs

#Check the xfs mounts (still no quota support)
mount -t xfs

#Unmount
umount /shared_xfs

#We edit the fstab file
vim /etc/fstab 

#replace defaults with uquota

#Save and exit

#Apply the new config
mount -a

#Check the xfs mounts (now we have quota support)
mount -t xfs

#What is in the directory
ls -l /shared_xfs

#Lets create a file
sudo -u vagrant fallocate -l 20M /shared_xfs/file1

#List the content
ls -l /shared_xfs

#We can use xfs_quota interactive
xfs_quota #without an option is very limited
help #hit enter
quit 

#We can use xfs_quota interactive
xfs_quota -x #the expert way
help
quit

#Lets generate a report
xfs_quota -x -c 'report -h' /shared_xfs #report is command, -h humanreadable

#Create a quota for the vagrant user
xfs_quota -x -c 'limit bsoft=25M bhard=30M vagrant' /shared_xfs #b = block / we could also use i = inodes

#Lets generate a report
xfs_quota -x -c 'report -h' /shared_xfs

#Create an other file
sudo -u vagrant fallocate -l 8M /shared_xfs/file2

#We have hit the soft limit
xfs_quota -x -c 'report -h' /shared_xfs

#This will not work
sudo -u vagrant fallocate -l 8M /shared_xfs/file3

#The focus was on the blocks and not on the inodes
df -h /shared_xfs
df -i /shared_xfs

#The inodes report
xfs_quota -x -c 'report -i' /shared_xfs




