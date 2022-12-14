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

#The top ten
nmap --top-port 10 -oG -






Connecting to a service across the network requires the service to be started and listening on a
port. The port can be managed via the TCP or UDP transport layer protocol. A good starting
audit on any system is to list the TCP and UDP ports that are open. Installing a port scanning
tool such as nmap can be useful to list common ports found on internet systems.