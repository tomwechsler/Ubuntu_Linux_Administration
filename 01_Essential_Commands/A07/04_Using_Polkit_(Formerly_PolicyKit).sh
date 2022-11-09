man polkit

sudo cat /etc/polkit-1/localauthority.conf.d/51-ubuntu-admin.conf

id

sudo usermod -aG sudo vagrant

id

exit

#Start new SSH Session

#Change a line
sudo visudo

#Break the sudo function

sudo visudo

echo $$

#Start an new terminal and SSH session
#In the new terminal
pkttyagent -p <bash pid>

#Switch to the original SSH session
pkexec visudo

#Switch to the new session and choose the account/password



Designed more for desktop systems we have PolKit. A separate authenticator program is
required to authenticate users. Make sure your user has a password and you belong to the sudo
group. We require the authenticator to monitor the process in another window.