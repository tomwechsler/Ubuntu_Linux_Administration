cat /etc/group

getent group sudo

sudo groupadd sales

sudo groupmod -n grp-sales sales

sudo groupdel grp-sales



Groups are created in the /etc/group file. We can view the file or use the getent command to
list groups. We can rename a group using groupmid and the option -n. Groupdel is used to
delete the group.