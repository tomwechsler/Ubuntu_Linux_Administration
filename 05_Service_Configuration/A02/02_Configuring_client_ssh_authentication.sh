#Working on ubuntu1

#List the .ssh
ls .ssh

#Generate ssh keys
ssh-keygen -t TABTAB
ssh-keygen

##List the .ssh
ls .ssh

#Copy the public to ubuntu2
ssh-copy-id tux@192.168.56.102

#Connect with ssh
ssh tux@192.168.56.102

#Cat the key file
cat .ssh/authorized_keys

#Exit from ubuntu2
exit

#Save the passphrase for the current shell
eval $(ssh-agent)
ssh-add
ssh tux@192.168.56.102

#Lets disable password authentication
su - vagrant

sudo vim /etc/ssh/sshd_config

#Set PasswordAuthentication no
#Save and exit

#Restart the service
sudo systemctl restart sshd.service

#Exit the session
exit


As well as being more secure, key based authentication is more convenient. Even with a
passphrase to the private key we can cache the passphrase fort ease of use. We can turn off
password authentication on the server once we have keys established.