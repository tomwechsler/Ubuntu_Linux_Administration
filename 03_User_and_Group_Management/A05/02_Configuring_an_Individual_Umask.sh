umask

grep '#umask' .profile

sed –i '/^#umask/s/^#//' .profile ##uncomment the umask setting

sed –i '/^umask/s/^/#/' .profile ##to comment the line



