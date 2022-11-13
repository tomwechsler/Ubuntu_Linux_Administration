sudo systemd-analyze verify /etc/systemd/system/backup.service
sudo systemd-analyze verify /etc/systemd/system/backup.timer
sudo systemctl enable backup.timer
sudo reboot
systemctl list-timers



The analyze command that we saw previously can also be used to verify unit files.