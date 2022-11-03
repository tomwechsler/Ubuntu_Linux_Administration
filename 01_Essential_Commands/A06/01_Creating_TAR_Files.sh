sudo du -sh /etc
22M /etc
sudo tar -cf etc.tar /etc 
tar: Removing leading `/' from member names
ls -lh etc.tar 
-rw-r--r--. 1 root root 21M Jan 18 10:49 etc.tar



The command tar can be used to create file archives. Although, Tape Archives, they are more
commonly used in standard filesystems. By default, a TAR file is not compressed but may appear
to be a slighty small size than the original content. This is due to the more efficient use of
blocks in the filesystem and not compression.