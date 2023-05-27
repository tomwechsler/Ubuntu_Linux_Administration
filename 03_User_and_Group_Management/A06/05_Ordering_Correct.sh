sudo sed -i "1i auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" 

/etc/pam.d/common-auth

su - alf

sudo pam_tally2 -u alf



