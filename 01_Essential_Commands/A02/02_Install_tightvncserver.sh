#Install the xfce4
sudo apt install -y xfce4 xfce4-goodies

#Install the tightvncserver
sudo apt install -y tightvncserver

#Start the vncserver
vncserver

vncserver -kill :1

vim ~/.vnc/xstartup

#!/bin/sh
xrdb $HOME/.Xresources
startxfce4&

vncserver