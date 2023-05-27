#Working on ubuntu2

#Install apache and a commandline browser (w3m)
sudo apt install -y w3m apache2-doc apache2

#The listening ports
ss -ntl

#The apache default page
w3m localhost

#The apache docs
w3m localhost/manual/de

#The apache status
w3m localhost/server-status

#Lets create a CNAME
sudo vim /etc/bind/zones/db.local
...
www.local. IN CNAME ubuntu2.local.
#Dont forget to update the serial
...

#Save and exit

#Check the config
sudo named-checkzone local. /etc/bind/zones/db.local

#Reload the service
sudo rndc reload local. IN

#Check with dog
dig www.local CNAME
dig +short www.local CNAME

#SWITCH TO UBUNTU1

#Install the browser
sudo apt install -y w3m

#We do not need the domain (.local)
w3m www




