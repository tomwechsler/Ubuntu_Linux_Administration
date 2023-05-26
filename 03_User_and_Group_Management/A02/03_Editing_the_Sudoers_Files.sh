sudo visudo

sudo visudo -f /etc/sudoers.d/bob



Using the command visudo to make changes to the configuration will enforce a syntax check
when the file is saved.
A misconfigured sudo entry will disable sudo access to your system.


bob ubuntu1=(root) NOPASSWD: ALL

%sudo ALL=(root) ALL 

%helpdesk ALL=(root) /usr/bin/passwd, !/usr/bin/passwd root



