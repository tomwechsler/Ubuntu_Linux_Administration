#On ubuntu1
sudo vim /etc/netplan/50-vagrant.yaml

---
network:
  version: 2 
  renderer: networkd
  ethernets:
    enp0s8:
      addresses:
      - 192.168.56.101/24 
      routes:
      - to: 192.168.2.0/24 
        via: 192.168.56.102 

#Lets apply the config
sudo netplan apply

#Check the route table
ip route show

#Can we ping ubuntu2
ping 192.168.2.1




