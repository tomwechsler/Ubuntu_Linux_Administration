#The minimum permissions needed for a directory is just the execute bit

#This allows a user to enter the directory, but not to list the directory content

#Users must know the name of the file they need to access and having read permissions to the file those files

sudo mkdir -m 751 /shared

ls -ld /shared

cd /shared

ls

sudo vim /shared/file1
ich bin groot!
:wq

sudo ls -l

cat file1

cd

cat /shared/file1

#But I am not able to list the content
ls -l /shared