ls -la /etc/skel

sudo ln -s /usr/share/doc /etc/skel/doc

sudo useradd user4

ls ~user4



User home directories are templated from the /etc/skel directory. We could specify a different
skeleton directory with the option -k to useradd. Adding or changing content within the
directory will affect new home directories but not existing ones.