#Working on Ubuntu2

#Lets edit the config
sudo vim /etc/bind/named.conf.local 

zone "local" {
  type primary;
  file "/etc/bind/zones/db.local";
};

#Check the config
sudo named-checkconf /etc/bind/named.conf.local

#To store our zone files
sudo mkdir /etc/bind/zones

#List the directories
ls /etc/bind

#Lets create the forward lookup zone file (use the db.locl file)
sudo vim /etc/bind/zones/db.local

#Ceck the config
sudo named-checkzone local /etc/bind/zones/db.local

#Reload the service
sudo rndc reload

#And lets test
ping ubuntu1.local
ping ubuntu2.local
dig local. NS
dig +short local. NS






We want to host the DNS domain "local". We will have hostname or address records for
ubuntu1.local, ubuntu2.local and so on. The first step is to create the zone in the configuration
file.

We can check the zone and reload. From both systems we should be able to ping ubuntu1 and
ubuntu2 by full or shortnames. Using dig, we can query nameserver record types.