ls -l /etc/hosts
-rw-r--r-- 1 root root 220 Jan 10 09:56 /etc/hosts 

ls -l /etc/shadow 
---------- 1 root root 970 Jan 10 10:01 /etc/shadow

<file type> <permissions> <link count> <user group> <size> <modified time>

ls -l /etc/services

ls -lh /etc/services

sudo vim /etc/services

ls -lh /etc/services

stat /etc/services 

stat -c %a /etc/services
644

stat -c %A /etc/services

Listing files with the -l options we can see more metadata from the file. This includes the file type, permissions, link count,
ownership, file size and the last modified time. The command stat can be also be used to view this data.