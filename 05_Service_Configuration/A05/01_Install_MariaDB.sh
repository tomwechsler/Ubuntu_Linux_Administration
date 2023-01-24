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




MariaDB is a community developed fork of the MySQL RDBMS. The project is led by the original
MySQL developer Michael "Monty" Widenius and is intended to keep the database free and
open-source. Installing the server will also install the client, by default the root user is secured
as it only supports UNIX socket authentication.