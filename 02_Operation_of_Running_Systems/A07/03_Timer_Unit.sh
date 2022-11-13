[Unit]
Description="Run backup of etc once a day"

[Timer]
OnBootSec=5min
OnUnitActiveSec=24h
Unit=backup.service

[Install]
WantedBy=multi-user.target



The timer unit calls the service. We enable the timer unit, so it starts automatically.
In this configuration it will run 5 minutes after boot and the every day.