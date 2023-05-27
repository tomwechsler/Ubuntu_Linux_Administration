#Are there any rules
sudo iptables -L

#List the iptables package
sudo apt list '*iptables-*' 

#Install the iptables package
sudo apt install -y iptables.persistent 

#Infos to the iptables
systemctl cat iptables

#What is the netfilter-persistent
file /usr/sbin/netfilter-persistent

#Get more infos
cat /usr/sbin/netfilter-persistent 

#Infos about the default config
cat /etc/default/netfilter-persistent 

#The rules and counters
cat /etc/iptables/rules.v4 





