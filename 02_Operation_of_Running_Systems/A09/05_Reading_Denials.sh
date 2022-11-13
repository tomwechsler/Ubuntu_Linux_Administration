file_test.py
/usr/bin/python3: can't open file '/usr/bin/file_test.py': [Errno 13] Permission denied
sudo journalctl -k -g 'apparmor="DENIED"'
sudo aa-notify -s 1 -v



The profile has no rules, this means that nothing can be executed. We can see the denials with
journalctl or from aa-notify.