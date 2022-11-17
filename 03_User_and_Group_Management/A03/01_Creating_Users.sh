file $(which useradd)

file $(which adduser)

useradd --help

sudo useradd user1

tail -n1 /etc/passwd

getent passwd user1

grep '^passwd:' /etc/nsswitch.conf

man 5 passwd

id user1

ls /home

sudo useradd -m -s /usr/bin/bash -G admin,sudo user2

ls /home

id user2

!ta



New users can be created using the command useradd. We need to elevate our permissions
using sudo. An account will be created by using the defaults but we may prefer to add options
as we will see.