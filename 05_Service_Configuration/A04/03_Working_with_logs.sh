#Working on ubuntu2

#Edit the apache conf file
sudo vim /etc/apache2/apache2.conf

LogFormat "%h %t \"%r\" %>s %O \"%{Referer}i\" \"%{User-Agent}i\"" my-combined

#Save and exit

#Edit the default conf
sudo vim /etc/apache2/sites-available/000-default.conf 

CustomLog ${APACHE_LOG_DIR}/access.log my-combined

#Save and exit

#What the logs will show
sudo tail /var/log/apache2/access.log

#Lets edit the index.html
sudo vim /var/www/html/index.html

<h1> My Page</<h1> 
<a href="page2.html"> See Page 2 </a>

#Save and exit

#Create page2
sudo vim /var/www/html/page2.html

Hello from Page 2

#Save and exit

#Restart the service
sudo systemctl restart apache2 

#Browse through the page
w3m www.local.

#Show the log file
sudo tail /var/log/apache2/access.log



