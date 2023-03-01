#Working on ubuntu1 in a root session

sudo -i

#Check the size
df -h /shared_lvm

#The volume group size
vgs

#Extend the logical volume
lvextend -r -l +100%FREE -r vg1/lv1 #-l = Extend or set the logical volume size in units of logical extents; 
#-r = Resize underlying filesystem together with the logical volume

#Check the size
df -h /shared_lvm

#All changes with existing files, everything was online
ls -l /shared_lvm



If space becomes low in a logical volume, we can increase its size to the amount available in the
volume group. If more space is required in the volume group, we can add PVs to it. The option -l
specifies the number of extents to extend by, using this option we can use all available space in
the VG. The option -r resizes the filesystem even whilst it is online.