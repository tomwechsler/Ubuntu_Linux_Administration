#Working on ubuntu2

#Install MariaDB-Server (installs also the client)
sudo apt install mariadb-server 

#Connect to the db (this will not work)
mysql -u root
mysql -u root -p

#This will work
sudo mysql -u root 
-> show databases; 
-> use mysql;
-> exit

#Login and use a database
sudo mysql -u root mysql
-> describe user; 
-> select User, plugin from user; 
-> exit




