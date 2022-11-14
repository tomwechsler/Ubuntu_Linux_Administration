crontab -l

crontab -e
* * * * * date >> /tmp/date

sudo journalctl -f

#Remove the crontab file
crontab -r

#By the way did our backup work?
sudo ls /root

sudo ls /tmp



Users can maintain their own crontab file using the crontab command. The fields are
the same as the system cron file but does not include the user account under which
to execute.