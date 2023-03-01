#Working on ubuntu1 in a root session

sudo -i

#No volume group
vgs

#Create a volume group
vgcreate -v -s8K vg1 ${disk}p1 #-s = Sets the physical extent size on physical volumes of this volume group

#Show the backup of the metadata
cat /etc/lvm/backup/vg1


#Display the physical volumes and volume group
pvdisplay #PE Size is set to 8K

vgdisplay #Metadata areas is set to 2

#Extend the volume group (this does also makes a physical volumes)
vgextend -v vg1 ${disk}p2 

#List the infos
pvs

pvdisplay

vgdisplay #Metadata is set to 3 (2 Metadata areas on p1 and 1 metadata area on p2)



When creating a volume group, the default extent size is 4K representing the minimum size
volume and be extended by. We can set the physical extent size when creating a volume group.
We can add additional storage to a volume group by extending it. If the storage is not already a
PV, the PV will be automatically created.