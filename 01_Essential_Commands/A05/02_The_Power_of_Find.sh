find -type f -name '*.html'

find /usr/share/doc -type f -name '*.html'

#We copy the result from find
find /usr/share/doc -type f -name '*.html' -exec cp {} ~/links/ \;

find -type f -name '*.html'

#We can also delete with find
find -type f -name '*.html' -delete

find -type f -name '*.html'

find / -maxdepth 1 -type l

#Let's edit a line in hosts
sudo vim /etc/hosts

find /etc -mmin 5 2>/dev/null

find /etc -mmin +5 2>/dev/null

find /etc -mmin -5 -type f 2>/dev/null

