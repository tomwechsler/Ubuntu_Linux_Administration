sudo apt update && sudo apt install –y bash-doc

ls /usr/share/doc/bash/examples/startup-files/

cat .profile

umask

grep '#umask' .profile

sed –i '/^#umask/s/^#//' .profile ##uncomment the umask setting

grep 'umask' .profile

#To check the settings logout and login

umask

#Undo the settings
sed –i '/^umask/s/^/#/' .profile ##to comment the line

!g

cat .bash_logout

#Does not work
/usr/bin/clear_console

tty

sed -i '$a clear' .bash_logout #appends to the last line

#Some commands
ls
ls -la

#Now logout

#Undo the settings
sed –i '$d' .bash_logout #deletes the last line

cat .bash_logout



