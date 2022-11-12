ls -l /var/log
cat /etc/rsyslog.conf



Traditionally, logs are stored in individual log files below /var/log. The main log file in
Ubuntu is /var/log/syslog. The /etc/rsyslog.conf controls where log messages are
sent to, along with the /etc/rsyslog.conf.d/ subdirectory.