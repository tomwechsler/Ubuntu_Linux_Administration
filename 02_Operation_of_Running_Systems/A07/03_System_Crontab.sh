sudo systemctl status cron

grep '^#' /etc/crontab

ls /etc/cron.d/

sudo nano /etc/cron.d/test
*/10 9-17 * * * root date >> /tmp/date


