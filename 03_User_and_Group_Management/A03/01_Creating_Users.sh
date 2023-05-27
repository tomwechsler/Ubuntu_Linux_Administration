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



