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




Command setting for all users can be configured with /etc/profile or /etc/bash.bashrc. As the
profile only runs once, upon login, this is preferred and has its own extension directory,
/etc/profile.d/ where you can add.sh files.