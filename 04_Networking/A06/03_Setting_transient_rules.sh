#An important info for configuring the following rules
who

#Allow SSH from the host
sudo iptables -A INPUT -p tcp -s 10.0.2.2 --dport 22 -j ACCEPT

#ESTABLISHED -- meaning that the packet is associated with a connection which has seen packets in both directions
#RELATED -- meaning that the packet is starting a new connection, but is associated with an existing connection
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT 

#Allow SSH from local interface
sudo iptables -A INPUT -i lo -j ACCEPT 

#Blocking what previously did not find a match
sudo iptables -A INPUT -j DROP 

#Our rules from the top down
sudo iptables -L

#With more information
sudo iptables -nvL

#Do not forget the configuration is not yet permanent!



Firewall rules reside in memory. For the moment, we only want allow our client IP address to
SSH. We can check the IP used from who. Additionally, we need to allow established and related
connections as often we connect to different ports once a connection is made, we also need to
allow access from the localhost to all services. Rules are read in order with the DROP last.