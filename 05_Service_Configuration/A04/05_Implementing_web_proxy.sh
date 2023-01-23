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



We can easily list loaded modules. We will need to enable the proxy module and the required
protocol module. Editing the configuration before restarting the service allows us to configure
the module. We grant proxy access just to our network; we should never implement open
proxies.

Normally, a proxy is configured within the graphical browser settings. For w3m we use
environment variables. These are LOWER case and configured on Ubuntu1.