sudo sed -i "1i auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" 
/etc/pam.d/common-auth
su - gandalf
sudo pam_tally2 -u gandalf



Having the tally module set early on the bad login is registered before access is denied.