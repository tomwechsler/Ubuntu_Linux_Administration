#Working on ubuntu2

#List the directories
ls /etc/apache2

#We have some commands
a2 TABTAB

#List the modules
a2query -m

#Deactivate a module
sudo a2dismod TABTAB

sudo a2dismod status

#We restart the service later, first we will edit the apache config file

#Test the config file
sudo apache2ctl -t

#Edit the file
sudo vim /etc/apache2/apache2.conf

ServerName www.local.
#: set syntax=apache ts=4 sw=4 sts=4 sr noet

#Save and exit

#And edit the default.conf
sudo vim /etc/apache2/sites-available/000-default.conf 
#Remove the #
ServerName www.local

#Save and exit

#Restart the service
sudo systemctl restart apache2

#List the modules
a2query -m

#Lets enable the status module, we need it for later
sudo a2enmod status

#Restart the service
sudo systemctl restart apache2

#List the modules
a2query -m

#What is the document root
sudo vim /etc/apache2/sites-available/000-default.conf 

#A little index page
echo "<h1>My Page</h1>" | sudo tee /var/www/html/index.html

#The index page
w3m www.local




The main Apache configuration file is /etc/apache2/apache2.conf. Rather than just one big file,
Debian breaks the configuration into smaller elements, which can easily be enabled and
disabled.

The ServerName directive needs to be set for each virtual host and in the main, global
configuration. It will always show as a warning is it is not set. We can test configuration with
apache2ctl.

The default location for web pages is /var/www/html we can add out own simple content. As we
are not changing the configuration, there is no need to restart apache.