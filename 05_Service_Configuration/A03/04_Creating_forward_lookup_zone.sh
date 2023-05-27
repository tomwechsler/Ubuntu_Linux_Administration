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






