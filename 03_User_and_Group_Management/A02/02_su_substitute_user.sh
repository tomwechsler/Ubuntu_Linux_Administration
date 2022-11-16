id

echo $USER

#To demonstrate a full login shell we set the root (in ubuntu root has no password) password
sudo passwd root

#A root shell but no environment variables
su

id

echo $USER

exit

#su - or su -l are the same
su -

su -l

pwd

echo $USER

useradd -m bob -s /bin/bash

#Bob has no password, but root can su
su - bob

pwd

exit



Using the command su we can change to the root account, or any account that we know the
password. If the root account does not have a password, as is the case with Ubuntu, then this is
not an option unless we set the root password.