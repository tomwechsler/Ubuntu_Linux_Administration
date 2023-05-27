#Working on ubuntu2

#The listening ports
ss -ntl #3306

#About the help (not so much)
mysqld --help

#Much more with -verbose so we use head
mysqld --help --verbose | head 

#The content from the conf file (the include)
cat /etc/mysql/my.cnf 

#Lets have a look at
cat /etc/mysql/mariadb.conf.d/50-server.cnf | less

#Lets edit the conf file
sudo vim /etc/mysql/mariadb.conf.d/50-server.cnf

#bind-address
skip-bind-address 

#Save and exit

#Restart the service
sudo systemctl restart mariadb 

#Lets check
ss -ntl




