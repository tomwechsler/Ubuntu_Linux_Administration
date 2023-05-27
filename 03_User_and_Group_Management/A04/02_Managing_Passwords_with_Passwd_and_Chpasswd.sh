sudo passwd user8

sudo getent shadow user8

sudo passwd -l user8

sudo getent shadow user8

sudo passwd -u user8

sudo getent shadow user8

#Notice we start with a space (this line will not show in the history)
 echo "user8:P@ssw0rd" | sudo chpasswd

#Nope no entry
history

sudo getent shadow user8

#Interactive mode to set the password
sudo chpasswd

user8:P@ssw0rd
user9:P@ssw0rd

CTRL+D

#Copy the users from above
vim users

sudo chpasswd < users


