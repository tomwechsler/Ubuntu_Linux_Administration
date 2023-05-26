sudo -l

sudo useradd -m bob -s /bin/bash

sudo passwd bob

id bob

sudo visudo

sudo visudo -f /etc/sudoers.d/bob
#bob ALL=(root) /bin/passwd, !/usr/bin/passwd root
#Becareful with the syntax
#bob ALL(root) /bin/passwd, !/usr/bin/passwd root -> will not work

su -l bob

sudo -l

sudo passwd ubuntu

sudo passwd root

sudo -l

sudo -k

sudo -l


