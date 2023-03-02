#Working on ubuntu1 in a root session

sudo -i

#Create a partition
parted /dev/sdc mklabel msdos mkpart primary 0% 100% print

#Install the package (if needed)
apt install cryptsetup

#Configure luksFormat
cryptsetup luksFormat /dev/sdc1

#Open and give the name data
cryptsetup luksOpen /dev/sdc1 data 

#Now the device mapper comes in
ls -l /dev/mapper 

#Close the partition
cryptosetup luksClose data



If cryptsetup is not installed, we can install it. This allows us to encrypt and decrypt disks or
partitions. To open the encrypted disk, we need to add the passphrase which should be long
and secure. This is not always convenient; you will see later that we can add a secure key.