#We working with the systemd eco system and use the following command
timedatectl

#We set the timezone
sudo timedatectl set-timezone 'Europe/London' 

#Lets check
timedatectl

#We have a look at the service
systemctl status systemd-timesyncd.service

#We can start the service with systemctl or
sudo timedatectl set-ntp true

#Check again
sudo timedatectl

#What about the service
systemctl status systemd-timesyncd.service

#To stop
sudo timedatectl set-ntp false

#Lets proof
sudo systemctl status systemd-timesyncd 

#And start again
sudo timedatectl set-ntp true

#Lets proof again
sudo systemctl status systemd-timesyncd 


