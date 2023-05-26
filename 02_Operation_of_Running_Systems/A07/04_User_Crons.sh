crontab -l

crontab -e
* * * * * date >> /tmp/date

sudo journalctl -f

#Remove the crontab file
crontab -r

#By the way did our backup work?
sudo ls /root

sudo ls /tmp


