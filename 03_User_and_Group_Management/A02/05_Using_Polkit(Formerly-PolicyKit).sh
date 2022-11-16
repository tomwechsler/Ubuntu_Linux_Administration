sudo cat /etc/polkit-1/localauthority.conf.d/51-ubuntu-admin.conf

echo $$

pkttyagent --process 5296

pkexec cat /etc/shadow

enter password



Designed more for desktop systems we have Polkit. A separate authenticator program is
required to authenticate users. Make sure your user has a password and you belong to the
wheel group. We require the authenticator to monitor the process in another window. Make
sure your user is in the sudo or admin group.