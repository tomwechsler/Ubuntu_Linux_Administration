#Check the ufw status
sudo ufw status

#With a root session the ufw config will be easier
sudo -i

#Check again
ufw status

#The default configuration
cat /etc/default/ufw

#Allow SSH
ufw allow ssh

#Turn on the firewall
ufw enable

#Check again
ufw status

#More Infos
ufw status verbose 

#Shows the lines
ufw status numbered

#What ufw has configured
iptables -L



