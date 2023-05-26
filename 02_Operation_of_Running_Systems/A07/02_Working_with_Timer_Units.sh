systemctl list-timers

systemctl cat logrotate.timer

man 5 systemd.timer
/Accur

sudo systemctl edit backup.service --full --force

sudo systemd-analyze verify /etc/systemd/system/backup.service

#Edit the file with an error
sudo systemctl edit backup.service --full --force

sudo systemd-analyze verify /etc/systemd/system/backup.service

#Undo the settings
sudo systemctl edit backup.service --full --force

sudo systemd-analyze verify /etc/systemd/system/backup.service

sudo systemctl edit backup.timer --full --force

sudo systemd-analyze verify /etc/systemd/system/backup.timer

sudo systemctl enable backup.timer

sudo reboot

systemctl list-timers


