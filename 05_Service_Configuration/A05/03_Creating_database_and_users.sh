#Working on ubuntu2

#Working with MariaDB
sudo mysql -u root mysql

#Show the databases
-> show databases;
-> SHOW DATABASES;

#Create a database
-> CREATE DATABASE sales; 
-> SHOW DATABASES; 

#Show the users
-> SELECT User, Host FROM user;
-> SELECT User, Host FROM user; WHERE Host <> 'localhost';

#Creta a new user
-> CREATE User 'bob'@'192.168.56.0/255.255.255.0' IDENTIFIED BY 'Password1'; 

#Check
-> SELECT User, Host FROM user; WHERE Host <> 'localhost'; 
-> exit 

#This will not work
mysql -h 192.168.56.102 -u bob

#Much better
mysql -h 192.168.56.102 -u bob -pPassword1

#Access denied
-> USE sales;
-> exit

#Working as root
sudo mysql -u root mysql

#Create a new user and set the permissions to the sales database
-> GRANT ALL PRIVILEGES ON sales.* to 'brent'@'192.168.56.0/255.255.255.0' IDENTIFIED BY 'Password1';
-> SELECT User, Host FROM user; WHERE Host <> 'localhost';
-> exit

#SWITCH TO UBUNTU1

#Install the client
sudo apt install mariadb-client

#Lets test
mysql -h 192.168.56.102 -u brent -pPassword1 sales 

-> USE sales;
-> exit



A database server, will host databases, the name gives it away! A database will contain tables,
but we will just look at the first level database.

If access is required from remote hosts, we can create other users than root. Users have a host
portion to define where they can login from. If it is % they can login in from any host. Here we
restrict to the local subnet. We can test locally but also install the mariadb-client in Ubuntu1
for a better test.