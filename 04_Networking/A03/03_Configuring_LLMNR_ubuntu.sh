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




Local-Link Multicast Name Resolution: If this is enabled on systems, name resolutions can be
made simple on local area networks. Multicast requests are sent on the network for hostnames,
servers can respond if they match the request. This needs to be enabled on all systems you
want names resolved.