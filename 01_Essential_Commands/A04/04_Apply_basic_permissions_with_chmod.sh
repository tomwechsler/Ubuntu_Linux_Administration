#Do not forget, permissions are not cumulative!
umask

echo hello > new_file

cat new_file

ls -l new_file

chmod -v 006 new_file # or

#not cumulative
cat new_file

chmod -v g=rw new_file

ls -l new_file

#not cumulative
cat new_file

chmod -v 666 new_file

cat new_file

chmod -v o= new_file

chmod -v g-w new_file




