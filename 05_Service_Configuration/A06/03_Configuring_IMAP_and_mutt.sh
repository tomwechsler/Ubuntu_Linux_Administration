#Working on ubuntu2

#Install dovecot
sudo apt install dovecot-imapd

#Check the ports
ss -ntl #993 IMAPS 143 IMAP

sudo ss -ntlp

#The self-signed certificate (Add your own certificate for an enterprise setup)
head -n 15 /etc/dovecot/conf.d/10-ssl.conf

#We create a new user with no interactive shell, but it can change the password
sudo useradd -m jack -s /usr/bin/passwd

#Check
getent passwd jack

#Set th password
sudo passwd jack

#Create a mail
echo "Hello and welcome to the firm" | mail jack -s "Welcome" 

#SWITCH TO UBUNTU1

#Install the mail client
sudo apt install mutt 

#To configure mutt
vim .muttrc
set folder="imap://jack@ubuntu2" 
set spoolfile="imap://jack@ubuntu2/INBOX"

#Open mutt
mutt



