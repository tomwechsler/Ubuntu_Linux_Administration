#Working on ubuntu2

#Check the listening ports
sudo ss -utlnp

#Whats in the resolv.conf file
cat /etc/resolv.conf

#But the resolv.conf is a symbolic link
ls -l /etc/resolv.conf

#Lets use resolvectl (at the end we see some dns servers)
resolvectl
resolvectl status

#What is now used as DNS
dig

#Lets the network settings
sudo vim /etc/netplan/50-cloud-init.yaml

#First some vim settings
:set ts=2 sw=2

dhcp-overrides:
  use-dns: false
nameservers:
  addresses:
    - 8.8.8.8
    - 8.8.4.4
  search: [local]

#Save and exit

#Apply the new config
sudo netplan apply

#The resolv.conf has not yet received the adjustment
cat /etc/resolv.conf

#Lets check with resolvectl
resolvectl

#Lets create a new symbolic link
sudo lf -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

#Now it looks better
cat /etc/resolv.conf

#Lets test
dig



By default, each Ubuntu is its own DNS Server. Requests are made to the local ip and
resolved from the internet. In an enterprise, there is no need for each system to resolve from
the internet.

To read the settings from netplan we need to relink the /etc/resolv.conf.