#On ubuntu2
ip addr show

#We add an additional IP
sudo ip addr add 192.168.2.1/24 dev enp0s8

#The route table
ip route show 

#On ubuntu1
ip route show

#The ping will fail
ping 192.168.2.1

#Lets add a route
sudo ip route add 192.168.2.0/24 via 192.168.56.102 

#The new route table
ip route show

#Now it works
ping 192.168.2.1 

#The ip route was not permanent if we apply the following
sudo netplan apply

#The route has been gone
ip route show



