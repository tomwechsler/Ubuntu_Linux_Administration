sudo apt install -y apache2 

sudo iptables -vL --line-numbers 

sudo iptables -I INPUT 3 -p tcp -s 192.168.56.0/24 --dport 80 -j ACCEPT 

sudo iptables -S

sudo iptables -D INPUT 3 

sudo vim /etc/iptables/rules.v4 

sudo iptables-restore /etc/iptables/rules.v4 



Previously, we appended rules to the chain. With the last rules being the DROP rule appending
is not an option. We need to insert at a given line number. We can also delete rules. Personally, I
find it easier to edit the rule file and restore it.