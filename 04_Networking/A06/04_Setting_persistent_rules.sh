#Clear the counters and save the config
sudo iptables -Z && sudo iptables-save -f /etc/iptables/rules.v4 

#View the file
cat /etc/iptables/rules.v4

#Flush the rules in memory
sudo iptables -F

#Lets check
sudo iptables -L

#Restore the rules
sudo iptables-restore /etc/iptables/rules.v4 

#Lets check
sudo iptables -L
 
#Check the status of our iptables service
sudo systemctl status iptables

#Reboot the system
sudo reboot

#Is the configuration still available?
sudo iptables -L




Firewall rules we want to persist should be stored in the file /etc/iptables/rules.v4 to be
accessed by the service unit. We can clear the counters before saving ensuring they are not
stored in the file. Do not store firewall rules if they have caused problems in the runtime
configuration.