sudo grep -i 'storage' /etc/systemd/journald.conf
man 5 journald.conf
sudo sed -i 's/#Storage=auto/Storage=persistent/' /etc/systemd/journald.conf
sudo grep -i 'storage' /etc/systemd/journald.conf
sudo systemctl restart systemd-journald

