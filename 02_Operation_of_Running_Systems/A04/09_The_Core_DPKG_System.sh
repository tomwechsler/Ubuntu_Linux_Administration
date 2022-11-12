dpkg -l

dpkg -L postfix

dpkg -S /etc/xattr.conf

sudo dpkg-reconfigure postfix

sudo systemctl reload postfix

ss -ntl



It is the Debian Packager that is used as the basis of APT. We can use this to list
packages, package contents and locate a file to its parent package. We can also
force installation scripts to re-execute for simple changes to package configuration.