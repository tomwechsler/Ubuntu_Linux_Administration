cat octal.txt

#Default permissions for files:
666

#Default permissions for directories:
777

#The current umask value affects default permissions
002

umask

touch f1

ls -l f1

mkdir dirone

ls -ld dirone

umask 0

umask

touch f2

ls -l f2

mkdir dirtwo

ls -ld dirtwo

umask 077

touch f3

ls -l f3

#Add a umask value and command to a login script to persist setings