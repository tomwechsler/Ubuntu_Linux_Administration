#Working on ubuntu2

#Install dovecot
sudo apt install dovecot-imapd

#Check the ports
ss -ntl #993 IMAPS 143 IMAP

ss -ntlp

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




Users may not access to the mail server from the command line. You would expect users
to access their mail remotely. This is where we would need an IMAP or POP3 server. We install
the IMAP and IMAPS service on Ubuntu2 and access it later from the Ubuntu1 system.


Secure IMAP (IMAPS) is enabled ba default and uses a self-signed certificate. Add your own
certificate and key if using in an Enterprise setup.

Setting a users shell to the passwd command will allow them to change their password but not
have an interactive shell. This can be useful for those users who need just remote mail.

We can access the mail for Jack remotely from Ubuntu 1. To configure mutt we create a
~/.muttrc file.