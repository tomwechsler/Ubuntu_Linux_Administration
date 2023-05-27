ls /etc/profile

ls /etc/profile.d

ls -l /etc/bash.bashrc

#Create a custom login script
sudo vim /etc/profile.d/custom.sh

umask 027
alias cleanfile="grep -E -v '^(#|$'"
set -o noclobber

#Exit the editor

#Exit the ssh session and login

alias

umask

cat .profile

cleanfile .profile

set -o

echo hello > file1

#Does not work anymore
echo hello > file1

#Append works
echo hello >> file1




