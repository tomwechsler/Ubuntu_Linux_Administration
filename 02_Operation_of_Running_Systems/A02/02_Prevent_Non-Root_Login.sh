echo "We are maintaining your Linux System" | sudo tee /etc/nologin



If the system is down for maintenance creating the file /etc/nologin, this stops non-root logins.
The file is removed on a reboot!