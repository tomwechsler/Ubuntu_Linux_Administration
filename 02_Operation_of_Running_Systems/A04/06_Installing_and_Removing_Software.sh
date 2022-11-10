sudo apt install -y postfix

sudo apt purge -y postfix

sudo apt autoremove -y



Using apt install we can install a package or list of packages. The delete them we can
use remove or purge. The latter will also remove configuration files. Dependency
packages are added automatically but the are not automatically removed.