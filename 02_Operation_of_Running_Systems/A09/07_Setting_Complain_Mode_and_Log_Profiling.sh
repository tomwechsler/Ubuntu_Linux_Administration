sudo  aa-complain /usr/bin/file_test.py
file_test.py
sudo aa-logprof
sudo aa-enforce /etc/apparmor.d/usr.bin.file_test.py



Setting the profile to complain, the script can run in its entirety. Nothing is denied and DENIALS
are logged. Reading the denials with aa-logprof we can correct errors.