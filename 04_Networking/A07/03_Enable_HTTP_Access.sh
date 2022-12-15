#Install the web server
apt install -y apache2 

#The system is listens on
ss -ntl

#On ubuntu2
curl 192.168.56.101

#Add a rule
ufw allow proto tcp from 192.168.56.0/24 to any port http 

#Check status
ufw status

#On ubuntu2
curl 192.168.56.101