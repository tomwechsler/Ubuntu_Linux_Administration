hostnamectl

man 8 shutdown

#Does not work
shutdown -r now

#We need elevated rights 
sudo !!

#The SSH connection will be disconnected

sudo shutdown -h +30 "The system will be shutdown in 30 mins"

sudo shutdown -c

sudo shutdown -h 17:30 "System will shutdown at 5.30 this afternoon"

sudo shutdown -c

#This creates a nologin file under /run
sudo shutdown -h +5 "The system will be shutdown in 5 mins"

ls /run

#Shut's the system down
sudo shutdown -h now


