#Test environment reset

#The system is listens on
ss -ntl

#Without name translation
ss -tl

#But what is really behind a port?
sudo ss -ltp

#Also with UPD
ss -nul

#Port number and name
less /etc/services

#Install nmap
sudo apt list *nmap*
sudo apt install -y nmap

#CAUTION: Use nmap only if you have the necessary permissions or in an isolated environment!

#The 1000 most common ports
nmap -v -oG -

sort -r -k3 /usr/share/nmap/nmap-services | more

#The top ten
nmap --top-port 10 -v -oG -

nmap -oG grepable.txt 192.168.56.0/24

grep "Host: 192.168.56.102" grepable.txt

