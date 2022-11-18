sudo groupadd helpdesk
sudo gpasswd -a vagrant helpdesk
sudo gpasswd -A vagrant helpdesk

gpasswd -a ubuntu helpdesk



The /etc/gshadow file not only stores the group password, if set. It can store group
administrators. An administrator can manage group membership with the gpasswd command.