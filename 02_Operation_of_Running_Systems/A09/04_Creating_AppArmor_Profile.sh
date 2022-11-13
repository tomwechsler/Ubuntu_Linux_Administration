aa-easyprof /usr/bin/file_test.py | sudo tee /etc/apparmor.d/usr.bin.file_test.py
sudo aa-status --enforced
sudo apparmor_parser -r /etc/apparmor.d/usr.bin.file_test.py
sudo aa-status --enforced



A profile template can be created with aa-easyprof. It writes to the screen so can be created as
a standard user. This can be loaded into AppArmor using apparmor_parser.