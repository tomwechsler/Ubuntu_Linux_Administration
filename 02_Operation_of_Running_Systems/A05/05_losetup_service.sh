[Unit]
Description=Setup Loop Device
DefaultDependencies=no
Before=local-fs.target
After=systemd-udevd.service

[Service]
Type=oneshot
ExecStart=/sbin/losetup /dev/loop1 /root/disk1
ExecStart=/sbin/partprobe /dev/loop1
RemainAfterExit=no

[Install]
WantedBy=local-fs.target



losetup.service