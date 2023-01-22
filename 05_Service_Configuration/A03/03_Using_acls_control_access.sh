#Working on ubuntu2

#Check the named.conf (there are more config files)
sudo cat /etc/bind/named.conf 

#Lets use the named.conf.options
sudo vim /etc/bind/named.conf.options 
acl "trusted" { 
  127.0.0.0/8;
  192.168.56.0/24; #First without this line to test the access
};
options { 
        directory "/var/cache/bind"; 
        allow-query { trusted; }; 
        allow-recursion { trusted; };
        allow-transfer { none; }; 
        recursion yes; 
         
#Save and exit

#Check the config
sudo named-checkconf /etc/bind/named.conf

#Restart the service
sudo systemctl restart bind9

#SWITCH TO UBUNTU1

#Test the DNS Server (we get an error)
dig www.winsolution.ch

#SWITCH TO UBUNTU2
#Lets use the named.conf.options and add our network
sudo vim /etc/bind/named.conf.options

#Save and exit

#Check the config
sudo named-checkconf /etc/bind/named.conf

#Restart the service
sudo systemctl restart bind9

#SWITCH TO UBUNTU1

#Test the DNS Server
dig www.winsolution.ch



We can secure the DNS server by disallowing zone transfers and allowing queries only from our
known networks.

Before restarting the service, we can check the configuration.