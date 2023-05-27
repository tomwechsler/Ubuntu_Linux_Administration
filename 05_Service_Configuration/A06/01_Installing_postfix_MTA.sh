#Working on ubuntu2

#First we check the ports
ss -ntl

#Install postfix and mail client
sudo apt install postfix mailutils

#General type: Internet Site
#System mail name: local

#Check the ports again
ss -ntlp

#Do we have an email
mail

#Lets send an email
mail vagrant -s "Test Message" 
Cc:
Hello Vagrant, Regards Tom 
Ctrl+D

#Do we have an email
mail 

#Choose Nr. 1

#To quit type q

#A local mail client is not helpful?
df -h /

df -h / > free.txt

df -h / > free.txt && mail root -s "Disk free: $(date +%F)" < free.txt

#Check the root mailbox
sudo mail




