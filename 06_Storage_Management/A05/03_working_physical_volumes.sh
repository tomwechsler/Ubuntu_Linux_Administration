#Working on ubuntu1 in a root session

sudo -i

#To be sure we working with the latest lvm version
apt install -y lvm2 

#No volumes (infos from memory)
pvs

#No volumes (scans attached disks)
pvscan

#We create a physical volumes
pvcreate -v --pvmetadatacopies=2 ${disk}p1 #--pvmetadatacopies = The number of metadata areas to set aside on each PV

#Use pvs and pvdisplay
pvs

pvdisplay



