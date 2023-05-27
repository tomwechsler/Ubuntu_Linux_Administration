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


