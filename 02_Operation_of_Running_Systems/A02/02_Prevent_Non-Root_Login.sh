#Prevent new logins
sudo -i
echo "We are maintaining your Linux System" | sudo tee /etc/nologin

#Try SSH from another tab

#A reboot removes the /etc/nologin file
sudo shutdown -r now






If the system is down for maintenance creating the file /etc/nologin, this stops non-root logins.
The file is removed on a reboot!