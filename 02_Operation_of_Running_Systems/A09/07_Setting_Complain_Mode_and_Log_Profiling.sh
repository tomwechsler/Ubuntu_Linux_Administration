aa-easyprof /usr/bin/file_test.py

aa-easyprof /usr/bin/file_test.py | sudo tee /etc/apparmor.d/usr.bin.file_test.py

cat /etc/apparmor.d/usr.bin.file_test.py

sudo aa-status --enforced

sudo apparmor_parser -r /etc/apparmor.d/usr.bin.file_test.py

sudo aa-status --enforced

#We get an error
file_test.py
/usr/bin/python3: cant open file '/usr/bin/file_test.py': [Errno 13] Permission denied

sudo aa-complain /etc/apparmor.d/usr.bin.file_test.py

sudo aa-status --complaining

udo aa-status --enforced

file_test.py

sudo aa-notify -s 1 -v

sudo journalctl -k -g 'apparmor="DENIED"'

sudo aa-logprof

sudo aa-enforce /etc/apparmor.d/usr.bin.file_test.py

file_test.py

#Edit the file name
sudo nano /usr/bin/file_test.py

file_test.py

sudo file_test.py


