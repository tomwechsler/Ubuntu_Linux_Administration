tar -cJf etc.tar.xz /etc 2>/dev/null& 
[1] 5091 


ps 
  PID TTY          TIME CMD 
 2831 pts/0    00:00:00 bash
 5091 pts/0    00:00:00 tar 
 5092 pts/0    00:00:01 xz 
 5093 pts/0    00:00:00 ps



Even when using compressions options, the tar command is independent of the 
compression tool that is invoked.