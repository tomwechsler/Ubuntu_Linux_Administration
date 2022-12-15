#Are there any rules
sudo iptables -L

#List the iptables package
sudo apt list '*.iptables*' 

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




The command iptables can be used to manage the host based netfilter firewall. These are kernel
modules that are present by default but without active rules. We can install additional packages
to allow ease of access to systemd service unit to load rules on boot.

