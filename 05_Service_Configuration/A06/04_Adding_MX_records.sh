#Working on ubuntu2

#We edit our zone file
sudo vim /etc/bind/zones/db.local 

local. IN MX 10 ubuntu2.local. #Dont forget to update the serial number of the zone

#Save and exit

#Check the zone file
sudo named-checkzone local. /etc/bind/zones/db.local 

#Reload the service
sudo rndc reload local. IN 

#Did it work?
dig local. MX 



