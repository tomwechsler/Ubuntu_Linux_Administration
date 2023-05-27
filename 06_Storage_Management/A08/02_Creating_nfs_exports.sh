#Working on ubuntu2

#Create an export
sudo vim /etc/exports

#/home 192.168.56.101(rw,root_squash,no_subtree_check,sync)

#Save and exit

#Read in the changes
sudo exportfs -r

sudo exportfs

#SWITCH TO UBUNTU1

#Install the nfs client
sudo apt install -y nfs-common

#Mount the export
sudo mount 192.168.56.102:/home /mnt

#Switch
cd /mnt/vagrant

#Create a file
touch remotefile

#BACK TO UBUNTU2
ls -l remotefile



