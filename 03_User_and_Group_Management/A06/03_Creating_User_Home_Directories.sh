#Lets remove the CREATE_HOME
vim /etc/login.defs

sudo useradd alf

echo "alf:P@ssw0rd" | sudo chpasswd

su - alf

echo "session optional pam_mkhomedir.so"

echo "session optional pam_mkhomedir.so" | sudo tee -a /etc/pam.d/common-session

cat ESC .

su - alf

exit


