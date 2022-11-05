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


The command chmod, change mode, is used to adjust the file permissions. Using the option -v we are able to display both
the current and newly assigned permissions. We can use either octal or symbolic notation.


