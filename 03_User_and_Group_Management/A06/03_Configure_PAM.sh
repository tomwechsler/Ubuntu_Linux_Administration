echo "session optional pam_mkhomedir.so" | sudo tee -a /etc/pam.d/common-session
su - gandalf

exit



Adding the common-session file, the entry is available to all services.