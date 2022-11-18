ls -l /etc/shadow
ls -l /usr/bin/passwd
sudo cat /etc/shadow
sudo getent shadow vagrant
man 5 shadow



Using the adduser Perl script in Ubuntu, you will be promted for a user password. Useradd has
an option -p for the password but expects and encrypted password (password hash). Passwords
are stored in the file /etc/shadow, a password starting with an exclamation mark is invalid.