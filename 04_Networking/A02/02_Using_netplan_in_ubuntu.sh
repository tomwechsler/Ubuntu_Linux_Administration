#Prereqs: 2 SSH Sessions to unbuntu1 and 1 SSH Session to ubuntu2

#List the IP configuration
ip -4 a s enp0s8

#The netplan help
netplan --help

#Infos with netplan
netplan info

#Check the IP lease
netplan ip leases enp0s3

#The netplan config file
ls /etc/netplan

#Edit the file
sudo vim (ESC .)/50-vagrant.yaml

#Add a new IP Address and exit vim

#Now we can try our configuration
sudo netplan try

#Switch to the second SSH Session from ubuntu1
ip -4 a s enp0s8

#We will see the new IP (but with the try, it is not permanent)

#After the countdown has finished the IP has gone
ip -4 a s enp0s8

#Set the IP permanent
sudo netplan apply

#Lets proof
ip -4 a s enp0s8

#Reboot ubuntu1
sudo reboot

#Switch to ubuntu2
sudo vim /etc/netplan/50-vagrant.yaml

#Add a new IP Address and exit vim

#Set the IP permanent
sudo netplan apply

#SSH to ubuntu1 and ping the IP from ubuntu2
vagrant ssh ubuntu1

ping -c 3 192.168.57.102



