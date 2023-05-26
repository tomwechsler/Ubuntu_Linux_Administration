man 5 systemd.timer

Being able to quickly access help documentation will be an asset in the exam and in
real life.

#Service Unit
[Unit]
Description="Back up the etc directory"

[Service]
ExecStart=tar -czf /root/etc.tgz /etc

The timer unit will run a service unit. The service unit will not have the [Install]
section meaning that it cannot be enabled.

#Timer Unit
[Unit]
Description="Run backup of etc once a day"

[Timer]
OnBootSec=5min
OnUnitActiveSec=24h
Unit=backup.service

[Install]
WantedBy=multi-user.target

