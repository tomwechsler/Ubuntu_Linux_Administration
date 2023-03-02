#Working on ubuntu1 in a root session

sudo -i

#Add our key file
cryptsetup luksAddKey /dev/sdc1 /key/keyfile

#The UUID for sdc1
lsblk -f

#Setup the crypttab file
vim /etc/crypttab 

#data UUID=XXXX... /key/keyfile luks

#No passphrase is needed
cryptdisks_start data

#Create a filesystem
mkfs.xfs /dev/mapper/data

#Create a mount point
mkdir /shared_crypt

#Mount the partition
mount /dev/mapper/data /shared_crypt

#Copy some files
cp /etc/hosts /shared_crypt

ls /shared_crypt

#Unmount
umount /shared_crypt

#Stop to encrypt the data
cryptdisks_stop data



To help automate securing the data we can use a keyfile. This though should never be stored on
the same system. For us, we can pretend the the keyfile from /dev/ssd is in fact a removable
drive. The /etc/crypttab files is used to create the mapping and reference the keyfile.
