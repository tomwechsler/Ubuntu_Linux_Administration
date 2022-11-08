which poweroff

ls -l $(which poweroff)

ls -l $(which reboot)

ls -l $(which halt)

man poweroff

sudo reboot

uptime

#uptime again and load average goes down
uptime


If we need a non-scheduled event then we have direct access to systemctl to immediately
reboot or poweroff a system.