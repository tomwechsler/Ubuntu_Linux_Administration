#Check the IP
ip address show

#Just show the links
ip link show

#en=ethernet / p0=PCI Bus 0 / s3=slot 3

#A bit shorter
ip addr show

#The IP for a specific interface
ip -4 addr sh enp0s8

#Add a new IP
sudo ip addr add 192.168.3.101/24 dev enp0s8

#Lets have a look
ip -4 addr sh enp0s8

#On ubuntu2
sudo ip addr add 192.168.3.102/24 dev enp0s8

#Let's ping
ping 192.168.3.101

#On ubuntu1
ping 192.168.3.102

#ifconfig has been deprecated and is no longer installed by default 