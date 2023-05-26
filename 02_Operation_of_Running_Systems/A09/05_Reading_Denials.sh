file_test.py

/usr/bin/python3: cant open file '/usr/bin/file_test.py': [Errno 13] Permission denied

sudo journalctl -k -g 'apparmor="DENIED"'

sudo aa-notify -s 1 -v



