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


The command tar can be used to create file archives. Although, Tape Archives, they are more
commonly used in standard filesystems. By default, a TAR file is not compressed but may appear
to be a slighty small size than the original content. This is due to the more efficient use of
blocks in the filesystem and not compression.