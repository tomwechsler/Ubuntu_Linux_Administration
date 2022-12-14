#We start with the timedatectl command
timedatectl

#What about the sync status
timedatectl timesync-status 

#To change the sync configuration
sudo vim /etc/systemd/timesyncd.conf 

#Remove the # at NTP and set the new peer
#Save and exit

#Did it work?
timedatectl timesync-status

#We have to restart the service or
sudo timedatectl set-ntp false && sudo timedatectl set-ntp true

#Now it works
timedatectl timesync-status

#Show some life infos
timedatectl timesync-status --monitor

#The time sync details
timedatectl show-timesync




Configuring the NTP server to sync with, is a simple edit of the configuration file. Again, we can
manage this without the need of using systemctl to restart the service.