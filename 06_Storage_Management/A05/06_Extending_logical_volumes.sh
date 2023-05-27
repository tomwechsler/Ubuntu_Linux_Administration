#Working on ubuntu1 in a root session

sudo -i

#Check the size
df -h /shared_lvm

#The volume group size
vgs

#Extend the logical volume
lvextend -r -l +100%FREE vg1/lv1 #-l = Extend or set the logical volume size in units of logical extents; 
#-r = Resize underlying filesystem together with the logical volume

#Check the size
df -h /shared_lvm

#All changes with existing files, everything was online
ls -l /shared_lvm



