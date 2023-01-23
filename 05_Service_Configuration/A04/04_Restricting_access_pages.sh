#Working on ubuntu2

#Check the modules
sudo a2query -m

#If the module is not listed use
sudo a2enmod status 

#Edit the conf file
sudo vim /etc/apache2/mods-available/status.conf 

#Replace Require local with
Require ip 192.168.56.0/24

#Restart the service
sudo systemctl restart apache2

#SWITCH TO UBUNTU1 (should work)
w3m www/server-status 

#BACK ON UBUNTU2

#Edit the conf file
sudo vim /etc/apache2/mods-available/status.conf 

#Replace Require ip 192.168.56.0/24 with
Require ip 127.0.0.0/8

#Restart the service
sudo systemctl restart apache2 

#Check 
w3m localhost/server-status 

#SWITCH TO UBUNTU1 (should not work)
w3m www/server-status



The status page should not be accessible to everyone. It already has a commented line that we
can adjust to restrict just to the webserver itself.