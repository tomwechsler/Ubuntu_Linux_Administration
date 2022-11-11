sudo vim /etc/grub.d/40_custom

#In the editor navigate to last line Shfit + G

:r /boot/grub/grub.cfg

#Type 130dd this will delete 130 lines
#Delete all the line until "menuentry" and modify the name from "ubuntu" to "recovery"
#At the end of line "linux" remove "console and ro" and type "rw init=/bin/bash"
#At the line of submenu type dG to remove the rest of the content
#save and exit vim

#Update grub
sudo update-grub

#Open virtualbox and check new the grub entry


We can add custom GRUB entries to the 40_custom file. We can use the editor that we are most
comfortable with. We can copy entries from /boot/grub/grub.cfg as a starting point.