[Unit]
Description=Setup Loop Device
DefaultDependencies=no
Before=local-fs.target
After=systemd-udevd.service

[Service]
Type=oneshot
ExecStart=/sbin/losetup /dev/loop10 /root/disk1
ExecStart=/sbin/partprobe /dev/loop10
RemainAfterExit=no

[Install]
WantedBy=local-fs.target