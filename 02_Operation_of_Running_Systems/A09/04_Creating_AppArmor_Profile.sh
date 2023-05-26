aa-easyprof /usr/bin/file_test.py | sudo tee /etc/apparmor.d/usr.bin.file_test.py

sudo aa-status --enforced

sudo apparmor_parser -r /etc/apparmor.d/usr.bin.file_test.py

sudo aa-status --enforced



