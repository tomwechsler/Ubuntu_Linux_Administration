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



Physical volumes are the foundation of LVMs. The command 'pvs'retrieves physical volume
information from memory, while 'pvscan' scans attached disks. Typically, 'pvs' is used unless new
disks have been added to the system. If the command is not available on your system, you need
to install the 'lvm2'package.