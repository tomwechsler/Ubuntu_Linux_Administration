#Working on ubunut2

#List the modules
sudo a2query -m

#Enable the pdules
sudo a2enmod proxy proxy_http

#Edit the config file
sudo vim /etc/apache2/mods-available/proxy.conf 

ProxyRequests On
<Proxy *> 
    AddDefaultCharset off
    Require all denied 
    Require ip 192.168.56.0/24
</Proxy>

#Restart the service
sudo systemctl restart apache2

#SWITCH TO UBUNTU1

#Set the environment variables
export http_proxy=http://ubuntu2.local 

#Test
w3m www
w3m www.winsolution.com

#SWITCH TO UBUNTU2

#Check the log file
sudo tail -n 2 /var/log/apache/access.log



