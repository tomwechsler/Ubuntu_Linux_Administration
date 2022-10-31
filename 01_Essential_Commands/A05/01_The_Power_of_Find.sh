find /etc -mmin 60 2>/dev/null
find /etc -mmin -60 2>/dev/null
find /etc -mmin +60 2>/dev/null
find / -maxdepth 1 -type l
find /usr/share/doc -type f -name '*.html' -exec cp {} ~/links/ \;



The find command dynamically searches the given directory structure for files meeting the given criteria. 
As well as printing we can run commands against each found file.