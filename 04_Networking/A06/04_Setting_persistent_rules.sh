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




