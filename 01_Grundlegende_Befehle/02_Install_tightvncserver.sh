
sudo apt install -y xfce4 xfce4-goodies

sudo apt install -y tightvncserver

vncserver

vncserver -kill :1

vim ~/.vnc/xstartup

#!/bin/sh
xrdb $HOME/.Xresources
startxfce4&

vncserver