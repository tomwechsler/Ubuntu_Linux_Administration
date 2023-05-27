#Install the web server
sudo apt install -y apache2 

#Check the ports
ss -ntl

#From ubuntu2
curl 192.168.56.101
ssh vagrant@192.168.56.101

#Back on ubuntu1
sudo iptables -nvl

#A bit shorter
sudo iptables -S

#Display the numbers
sudo iptables -L --line-numbers

#More infos with -v
sudo iptables -vL --line-numbers

#Lets add a new rule
sudo iptables -I INPUT 3 -p tcp -s 192.168.56.0/24 --dport 80 -j ACCEPT 

#Check the config
sudo iptables -S

#We delete the rule
sudo iptables -D INPUT 3 

#Set the rule in the config file
sudo vim /etc/iptables/rules.v4 

#-A INPUT -s 192.168.56.0/24 -p tcp -m tcp --dport 80 -j ACCEPT

#Restore the config
sudo iptables-restore /etc/iptables/rules.v4

#Check the config
sudo iptables -S

#Back on ubuntu2
curl 192.168.56.101


