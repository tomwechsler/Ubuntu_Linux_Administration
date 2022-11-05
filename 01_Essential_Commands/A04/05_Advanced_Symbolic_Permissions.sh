umask 7

mkdir -p upper/{dir1,dir2} 

tree upper

touch upper/{dir1,dir2}/file

ls -lR upper/

chmod -vR a+X upper

touch another_newfile

ls -l another_newfile

#Does not apply to all, because of the umask
chmod -v +x another_newfile

chmod -v a+x another_newfile



Often, it is incorrectly thought that symbolic permissions are simpler and only used when you start your administration career.
This is far from the case as we see with -X. The upper-case X is used to set execute only of direcrories or files where execute is 
already set in one or more objects.
