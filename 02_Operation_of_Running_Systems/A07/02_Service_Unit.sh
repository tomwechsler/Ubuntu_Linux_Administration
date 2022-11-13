[Unit]
Description="Back up the etc directory"

[Service]
ExecStart=tar -czf /root/etc.tgz /etc



The timer unit will run a service unit. The service unit will not have the [Install]
section meaning that it cannot be enabled.