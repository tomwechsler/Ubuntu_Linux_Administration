sudo journalctl --unit multipathd -f
sudo systemctl status multipathd
man 5 multipath.conf



The multipath daemon allows for multiple networks path and topologies to be used 
to connect to storage arrays. The local drives /dev/sda and /dev/sdb have not been
excluded from topology mapping and, as a result, produce vast amounts of errors.