#Working on ubuntu1 in a root session

sudo -i

#Do we have any raid
cat /proc/mdstat

#Scan the system
mdadm -D --scan #-D = Details

#Check loop device numbers
losetup

#Lets create a raid
mdadm --create /dev/md0 --level= TABTAB #List all the possible raids

mdadm --create /dev/md0 --level=mirror --raid-devices=2 $diska $diskb

#Did it work
cat /proc/mdstat

#We check with mdadm
mdadm -D /dev/md0

#We save our raid config
mdadm -Db /dev/md0 #-b = brief output

mdadm -Db /dev/md0 >> /etc/mdadm/mdadm.conf 

tail -n1 /etc/mdadm/mdadm.conf

#Update initramfs (So that the raid drivers are available at startup.)
update-initramfs -u


