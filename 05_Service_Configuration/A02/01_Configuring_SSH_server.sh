#Working on ubuntu2

#First we create a user
sudo useradd -m -s /bin/bash tux

#Set the password
sudo passwd tux

#List the sshd config (-T test's the config and lists them)
sudo sshd -T

#Search in the config
sudo sshd -T | grep -E '(password|permit)'

#Change the root login to "no"
sudo vim /etc/ssh/sshd_config

#PermitRootLogin prohibit-password
PermitRootLogin no

#Save and exit

#Check the config
sudo sshd -T | grep -E '(password|permit)'

#-t will just check the config without an output
sudo sshd -t

#Restart the service
sudo systemctl restart ssh


