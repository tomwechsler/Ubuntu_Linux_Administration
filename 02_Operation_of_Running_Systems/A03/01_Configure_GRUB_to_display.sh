#Display the boot menu
sudo vim /etc/default/grub

#GRUB_TIMEOUT_STYLE=hidden (replace with menu)
#GRUB_TIMEOUT=0 (replace with 10)

sudo vim /etc/default/grub.d/50-cloudimg-settings.cfg

#GRUB_TIMEOUT=0 (delete the line or commented out)

sudo grub-mkconfig

sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo update-grub

#Watch in virtualbox
sudo reboot

We must first configure GRUB to display the menu. This is normally via the /etc/default/grub file
but we also must check for settings being reset in /etc/default/grub.d/