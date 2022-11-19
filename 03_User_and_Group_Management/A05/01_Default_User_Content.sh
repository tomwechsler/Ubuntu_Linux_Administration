sudo useradd -m test_user

ls -A ~test_user

ls -A /etc/skel



The user home directory is created from /etc/skel by default. The content only affects new
home directories and not existing content.