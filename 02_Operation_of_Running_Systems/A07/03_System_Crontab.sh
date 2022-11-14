sudo systemctl status cron

grep '^#' /etc/crontab

ls /etc/cron.d/

sudo nano /etc/cron.d/test
*/10 9-17 * * * root date >> /tmp/date



The root user can maintain scheduled jobs with the /etc/crontab file but more likely,
/etc/cron.d/. In the sample cron entry we create, every 10 minutes we write the date
to a file.