sudo useradd user1
sudo useradd --help
tail -n1 /etc/passwd
getent passwd user1
man 5 passwd
id user1
ls /home
sudo useradd -m -s /usr/bin/bash -G sudo user2



New users can be created using the command useradd. We need to elevate our permissions
using sudo. An account will be created by using the defaults but we may prefer to add options
as we will see.