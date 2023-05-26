#Let's check the size
sudo du -sh /etc

#We create a tar file
sudo tar -cf etc.tar /etc 

#What about the size
ls -lh etc.tar 

#-f for list
tar -tf etc.tar

#-x for extract
tar -xf etc.tar

cd etc

pwd

sudo rm /etc/hosts

cat /etc/hosts

cd /

sudo tar -xf ~vagrant/etc.tar etc/hosts

!ca


