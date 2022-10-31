umask 007

mkdir -p upper/{dir1,dir2} 

touch upper/{dir1,dir2}/file

ls -lR upper

chmod -vR a+X upper



Often, it is incorrectly thought that symbolic permissions are simpler and only used when you start your administration career.
This is far from the case as we see with -X. The upper-case X is used to set execute only of direcrories or files where execute is 
already set in one or more objects.
