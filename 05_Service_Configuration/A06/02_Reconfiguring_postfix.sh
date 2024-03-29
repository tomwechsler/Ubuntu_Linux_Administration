#Working on ubuntu2

#Checking the ports
ss -ntl

#Cat the mail aliases
cat /etc/aliases

#Remove the file - we create a new one
sudo rm /etc/aliases

#Start the reconfiguration
sudo dpkg-reconfigure postfix 

#Root and postmaster mail recipient: vagrant
#Other destinations: no change
#Local networks: add 192.168.56.0/24 at the end of the line
#Mailbox size: no change
#Local address extension: no change
#Internet protocols: ipv4

#Restart the postfix service
sudo systemctl restart postfix 

#Lets check the ports
ss -ntl

#What about the mal aliases
cat /etc/aliases

#Edit the aliases
vim /etc/aliases

#webmaster: root (do not use a user - if the user leaves the organization, the aliases must be adjusted again)

#Save and exit

#Apply the adjustment
sudo newaliases


#Test the alias
mail root -s "new test" < /etc/hosts

echo "Hello" | mail webmaster -s Message

mail


