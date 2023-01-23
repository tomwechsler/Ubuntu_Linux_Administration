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



Viewing the running configuration is made via sshd -T. We can update the configuration in the
sshd_config file and restart the server. We want to ensure that password authentication is
turned on and the root user cannot log in via SSH.
