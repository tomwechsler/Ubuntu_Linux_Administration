#Query the host database
getent hosts

#Query an external FQDN
getent hosts www.cisco.com

#The hosts file in /etc
sudo vim /etc/hosts

127.0.2.2 www.cisco.com cisco

#Save and exit

#Query cisco again
getent hosts www.cisco.com

#We change the order
sudo vim /etc/nsswitch.conf

#On the line hosts: dns files
#Save and exit

#But the our ubuntu system has a local dns and it is looking on the host file

#Query cisco again
getent hosts www.cisco.com

#We change the config in the resolved.conf file
sudo vim /etc/systemd/resolved.conf

#Remove the # from ReadEtcHosts and set to "no"
#Save and exit

#Restart the service
sudo systemctl restart systemd-resolved.service

#Query cisco again
getent hosts www.cisco.com

#we can still look at the host file
getent hosts



Name services can be located through database names in the /etc/nsswitch.conf. This includes
users, as well as hosts. Changing the search order can prevent simple attacks. On Ubuntu, we
also have to change the local DNS server not to read the hosts file.