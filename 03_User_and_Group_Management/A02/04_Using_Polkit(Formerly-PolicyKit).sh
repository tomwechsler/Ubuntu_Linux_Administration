#Open an second terminal/shell

#In the first shell
PS1="Window1 $ "

#In the second shell
PS1="Window2 $ "

id

sudo cat /etc/polkit-1/localauthority.conf.d/51-ubuntu-admin.conf

#Let's brake sudo
sudo visudo

echo $$

#In the second shell
pkttyagent --process 5296

#In the first shell
pkexec visudo

#In the secon shell
enter password

#Back to the first shell and undo the sudo break
sudo visudo



Designed more for desktop systems we have Polkit. A separate authenticator program is
required to authenticate users. Make sure your user has a password and you belong to the
wheel group. We require the authenticator to monitor the process in another window. Make
sure your user is in the sudo or admin group.