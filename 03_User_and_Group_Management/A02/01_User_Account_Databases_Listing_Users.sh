cat /etc/passwd

#What does the fields mean?
grep vagrant /etc/passwd

#Lets look at the man pages
man 5 passwd

#A Database view
getent  passwd

#The users must not always be local
grep '^passwd' /etc/nsswitch.conf

man nsswitch.conf

getent passwd vagrant

#An other search method
awk -F: '{ print }' /etc/passwd

#What does the man page mean?
man awk

#Thats not very valuable
awk -F: '{ print $3 }' /etc/passwd

#Shows the standard users
awk -F: '{ if ($3 > 999) print }' /etc/passwd

#Shows the system users
awk -F: '{ if ($3 < 1000) print }' /etc/passwd

#System users without root
awk -F: '{ if ($3 < 1000 && $3 > 0) print }' /etc/passwd




Database
/etc/passwd
getent passwd
getent passwd <username>
man 5 passwd
/etc/nsswitch.cenf

Types
standard users (UID above 1000)
system users (UID under 1000)
UID 0 (root)
Case-sensitive username as weil as password