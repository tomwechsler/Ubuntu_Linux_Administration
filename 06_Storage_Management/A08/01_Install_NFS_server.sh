#Working on ubuntu2

#The open ports
ss -ntl

#Install the package
sudo apt install -y nfs-kernel-server

#Edit the config file
sudo vim /etc/default/nfs-kernel-server 

#Edit the line "--manage-gids --no-nfs-version 3"

#Save and exit

#Restart the service
systemctl restart nfs-config nfs-kernel-server

#Check the ports again
ss -ntl




