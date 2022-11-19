umask

grep '#umask' .profile

sed –i '/^#umask/s/^#//' .profile ##uncomment the umask setting

sed –i '/^umask/s/^/#/' .profile ##to comment the line



The default unmask in Ubuntu is OOO2 for standard users, if you want to configure this differently
it can be configured in your login shell. We can easily comment and uncomment lines using sed.