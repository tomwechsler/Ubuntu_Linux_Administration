#Working on ubuntu2

#Install bind
sudo apt install -y bind9 bind9utils bind9-doc

#Lets change the DNS Servers
sudo vim /etc/netplan/50-cloud-init.yaml

addresses: [127.0.0.1]

#Apply the changes
sudo netplan apply

#Cat the resolv.conf
cat /etc/resolv.conf

#What about dig
dig

#The listening ports
ss -ntl

#Cange the config to listen only on IPv4
sudo vim /etc/default/named
OPTIONS="-u bind -4"

#Restart the service
sudo systemctl restart bind9

#Lets check
ss -ntl

#SWITCH TO UBUNTU1

#Change the DNS server
sudo vim /etc/netplan/50-cloud-init.yaml

dhcp-overrides:
  use-dns: false
nameservers:
  addresses: [192.168.56.102]
  search: [local]

#Save and exit

#Apply the changes
sudo netplan apply

#Set a new symbolic link
sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

#Check
cat /etc/resolv.conf

#Test
dig



BIND is a popular DNS server and we will install this on Ubuntu2. We configure the local resolver
to the local bind server.

If we do not need IPv4, we can configure IPv4 only on the DNS Server, (Ubuntu 2)

Having local servers resolve hostname from a central server in the datacenter is most efficient
and secure. Use the address of Ubuntu2 as the nameserver entry.