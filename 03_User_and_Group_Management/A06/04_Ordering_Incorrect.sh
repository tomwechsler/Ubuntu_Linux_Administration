echo "auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" | sudo tee -a 

/etc/pam.d/common-auth

su - alf

sudo pam_tally2 -u alf

sudo sed -i '$d' /etc/pam.d/common-auth



Adding to the end of the file may not work in all cases. Where a wrong password is supplied the
tally module may never run if a requisite control happens first.