#Working on ubuntu1

#List the options with TABTAB
ssh -o TABTAB

#Use some options (this will not work)
ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no tux@192.168.56.102

#Use some options (this will work)
ssh -o PreferredAuthentications=publickey -o PubkeyAuthentication=yes tux@192.168.56.102

#Exit the session
exit

#We create a SSH user configuration file, this must be private
OLDUMASK=$(umask) && umask 077

#Create the config file
vim .ssh/config

Host *
  ServerAliveInterval 300
  ServerAliveCountMax 2
Host ubuntu2
  Hostname 192.168.56.102
  User tux
  IdentityFile ~/.ssh/id_rsa

#List the permissions
ls -l .ssh/config

#Change the umask
umask $OLDUMASK

#Test the connection
ssh ubuntu2

#And exit the session
exit


