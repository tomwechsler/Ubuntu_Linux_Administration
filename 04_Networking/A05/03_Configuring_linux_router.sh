#sysctl is used to modify kernel parameters at runtime
sysctl -a

#Lets have a look at ip_forward
sysctl -ar ip_forward 

#The same info with
cat /proc/sys/net/ipv4/ip_forward

#We change the config
sudo vim /etc/sysctl.conf

#Remove the # at net.ipv4.ip_forward
#Save and exit

#Let's check
sudo sysctl -p

#Another check
cat /proc/sys/net/ipv4/ip_forward

#Another proof
sysctl -ar ip_forward




To forward packets for other hosts to remote networks, those networks that you are not
connected to, routing must be configured. We can store the setting in the /etc/sysctl.conf or
the /etc/sysctl.d/