#Working on ubuntu1 in a root session

#The swappiness range goes from 0 to 100 (default is 60). 0 = No swapping; 100 = Aggressive Swapping

sudo -i

#Check the swappiness
cat /proc/sys/vm/swappiness

#Is there a config in place
grep -R swap /etc/sysctl*

#Create a file
vim /etc/sysctl.d/99-swap.conf

vm.swappiness=20

#Save and exit

#Read in all config files
sysctl --system

#Check
!g

!c
#or
cat /proc/sys/vm/swappiness 



