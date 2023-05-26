#Prevent new logins
sudo -i
echo "We are maintaining your Linux System" | sudo tee /etc/nologin

#Try SSH from another tab

#A reboot removes the /etc/nologin file
sudo shutdown -r now


