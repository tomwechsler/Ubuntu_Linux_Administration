which poweroff

ls -l $(which poweroff)

ls -l $(which reboot)

ls -l $(which halt)

man poweroff





If we need a non-scheduled event then we have direct access to systemctl to immediately
reboot or poweroff a system.