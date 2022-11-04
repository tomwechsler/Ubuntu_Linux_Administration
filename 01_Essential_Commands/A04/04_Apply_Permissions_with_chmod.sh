touch file_perms

ls -l file_perms
-rw-rw-r-- 1 vagrant vagrant 0 Jan 15 13:15 file_perms 

chmod -v 666 file_perms # or

chmod -v o+w file_perms



The command chmod, change mode, is used to adjust the file permissions. Using the option -v we are able to display both
the current and newly assigned permissions. We can use either octal or symbolic notation.


