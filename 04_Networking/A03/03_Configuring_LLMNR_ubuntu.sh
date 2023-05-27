#The local nameserver
cat /etc/resolv.conf

#The listening ports
ss -lt

ss -lnt

#But the resolv.conf is a symbolic link
ls -l /etc/resolv.conf

#Show some infos
resolvectl status

#LLMNR is not running

#Lets change this
sudo vim /etc/systemd/resolved.conf

#Remove the # at LLMNR a set to "yes"
#Save and exit

#Restart the service
sudo systemctl restart systemd-resolved.service

#A little trick
^restart^status

#If the service would not be enabled and started
sudo systemctl enable --now systemd-resolved.service

#Can we ping ubuntu2?
ping ubuntu2

#Switch to ubuntu2

#Lets change this
sudo vim /etc/systemd/resolved.conf

#Remove the # at LLMNR a set to "yes"
#Save and exit

#Restart the service
sudo systemctl restart systemd-resolved.service

#A shell shorcut
!res:p

#Hit up arrow and enter

#Can we ping ubunt2?
ping -c 3 ubuntu2

#The dig command
dig ubuntu2




