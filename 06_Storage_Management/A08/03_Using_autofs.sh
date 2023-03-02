#Working on ubuntu1

#Unmount /mnt
umount /mnt

#Install autofs
sudo apt install -y autofs

#Cat auto.master
cat /etc/auto.master

#Edit the auto.master file
vim /etc/auto.master

#Remove the Hashtag /misc

#Save and exit

#Edit the auto.misc file
vim /etc/auto.misc

#linux  -rw,soft,intr   192.168.56.102:/home

#Save and exit

#Restart the service
sudo systemctl restart autofs

#Lets check
ls -l /misc

cd /misc

ls -la

cd linux

ls

