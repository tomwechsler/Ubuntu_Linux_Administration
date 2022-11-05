#Ownership of a file can be controlled with chown and chgrp commands
ls

cat new_file

chmod 006 new_file

ls -l new_file

#Does not work
chown root new_file

sudo !!

ls -l new_file

#No group permission
cat new_file

id

sudo chgrp sudo new_file

ls -l new_file

cat new_file

id