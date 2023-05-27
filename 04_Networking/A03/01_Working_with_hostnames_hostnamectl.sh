#Lets start
hostnamectl

#Are there any "machine" file
ls -l /etc/mach*

#Hostname is not like hostname
cat /etc/hostname

#Print out
hostname

#Change the hostname (is not permanent)
sudo hostname server1

#Print out
hostname

#Check with hostname config file
!ca

#With hostnamectl
hostnamectl

#Set a "pretty" hostname
sudo hostnamectl set-hostname "tom's vm"

#Check hostnamectl
hostnamectl

#Check with hostname config file
!ca

#The machine info file
cat /etc/machine-info

#Set a location
sudo hostnamectl set-location Zurich

#The machine type
sudo hostnamectl set-deployment dev

#Check hostnamectl
hostnamectl

#Check the machine config file
!ca

#The machine id
cat /etc/machine-id

#Show the OS
hostnamectl

#The os-release file
cat /etc/os-release


