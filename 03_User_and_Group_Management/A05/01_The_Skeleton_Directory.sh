sudo useradd -m test_user

ls -A ~test_user

ls -A /etc/skel

cd /etc/skel

#Create a new file wirh some text
vim README

cd

ls -A /etc/skel

#Nothing happend to the existing user home
ls -a ~test_user

sudo useradd -m test_user2

ls -A ~test_user2

