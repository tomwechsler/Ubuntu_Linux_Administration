cat /etc/sudoers

sudo !!

sudo ls /etc/sudoers.d/

sudo cat /etc/sudoers.d/vagrant

#List sudo entries
sudo -l

id

#Add Vagrant to admin group (has nothing to do with sudo, serves as a precaution in case of an emergency)
sudo usermod -aG admin vagrant

#In order for the group membership to take effect, we have to log out
exit

vagrant ssh ubuntu1

id

#We should not edit this file
sudo visudo

#ATTENTION to the syntax
sudo visudo -f /etc/sudoers.d/bob

bob ALL=(root) NOPASSWD: /usr/bin/passwd, !/usr/bin/passwd root

#Lets make a mistake
sudo visudo -f /etc/sudoers.d/bob

#Never use the third option

sudo su - bob

sudo -l

#This will not work
sudo cat /etc/shadow

sudo passwd ubuntu

#This will not work
sudo passwd root