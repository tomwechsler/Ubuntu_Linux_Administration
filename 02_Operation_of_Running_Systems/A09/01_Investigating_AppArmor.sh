sudo systemctl status apparmor
aa-status
sudo aa-status
sudo aa-status --enforced
ls /etc/apparmor.d
dpkg -S /etc/apparmor.d/lsb_release
apt show apparmor



AppArmor is installed by default on Ubuntu 20.04, altough extra utilities may be
useful. Apparmor has profiles which can be enforced or complaning.