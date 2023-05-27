sudo useradd -m user8 -s /bin/bash

#To set the password we use -p or --password (but it is not so easy)
sudo useradd --help

sudo useradd -m user9 -s /bin/bash -p $(openssl passwd -6 P@ssw0rd)

#Let's have a look at the fields
sudo tail -n2 /etc/shadow

date -d '1 Jan 1970'

date -d '1 Jan 1970 19265 days'

sudo chage -l user8

man 5 shadow

sudo getent shadow

sudo getent shadow user8


