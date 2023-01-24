#Working on ubuntu2

#Edit the config file
sudo vim /etc/bind/named.conf.local

zone "56.168.192.in-addr.arpa" {
  type primary;
  file "/etc/bind/zones/db.192.168.56";
};

#Save and exit

#Check the config
sudo named-checkconf /etc/bind/named.conf.local

#Create the reverse zone file (use the db.192.168.56 file)
sudo vim /etc/bind/zones/db.192.168.56

#Ceck the zone file
sudo named-checkzone 56.168.192.in-addr.arpa /etc/bind/zones/db.192.168.56

#Reload the service
sudo rndc reload

#Test the zones
host 192.168.56.101
dig +short -x 192.168.56.102



Reverse zones allows us to query names from IP addresses. A reverse zone is the 
IP address reversed with in-addr.arpa at the end. We have PTR records in place of A records.