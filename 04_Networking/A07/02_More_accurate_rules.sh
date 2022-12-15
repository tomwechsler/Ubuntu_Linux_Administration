#Infos
who

#Set a new SSH rule
ufw allow from 10.0.2.2 to any port 22

#Check
ufw status

#A what if
ufw --dry-run delete 3

#Delete the rule
ufw delete 3

#Check
ufw status

#A what if
ufw --dry-run delete 1

#Delete the rule
ufw delete 1

#Check
ufw status

#Set a new SSH rule
ufw allow proto tcp from 10.0.2.2 to any port 22

#Check
ufw status

#A what if
ufw --dry-run delete 1

#Delete the rule
ufw delete 1