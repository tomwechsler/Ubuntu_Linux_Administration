echo "auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" | sudo tee -a /etc/pam.d/common-auth

su - alf

sudo pam_tally2 -u alf

grep requisite /etc/pam.d/common-auth

sudo sed -i '$d' /etc/pam.d/common-auth

sudo sed -i "1i auth required pam_tally2.so onerr=fail deny=6 unlock_time=300" /etc/pam.d/common-auth

#Wrong passwod
su - alf

sudo pam_tally2 -u alf

#Correct password resets the counter
su - alf

sudo pam_tally2 -u alf

#Wrong passwod
su - alf

sudo pam_tally2 -u alf

sudo pam_tally2 -u alf -r

sudo pam_tally2 -u alf