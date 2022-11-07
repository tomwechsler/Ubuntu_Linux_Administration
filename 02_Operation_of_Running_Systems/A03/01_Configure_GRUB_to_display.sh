sudo vim /etc/default/grub
sudo vim /etc/default/grub.d/50-cloudimg-settings.cfg
sudo update-grub



We must first configure GRUB to display the menu. This is normally via the /etc/default/grub file
but we also must check for settings being reset in /ets/default/grub.d/