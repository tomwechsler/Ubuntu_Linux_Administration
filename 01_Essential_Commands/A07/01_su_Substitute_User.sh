#No password for root
su

#Set the root password
sudo passwd root

su

id

exit

su -l

pwd

exit

su -l ubuntu

sudo su - ubuntu

id

exit

man su

sudo passwd -l root


Using the command su we can change to the root account, or any account that we have the
password for. If the root account does not have a password, then this is not an option. We can
just change to the account, or we can execute a full login.