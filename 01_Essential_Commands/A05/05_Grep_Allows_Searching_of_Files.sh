#Count the lines in sshd_config
wc -l /etc/ssh/sshd_config

grep '^#' /etc/ssh/sshd_config

grep -v '^#' /etc/ssh/sshd_config

grep -vE '^(#|$)' /etc/ssh/sshd_config

grep password /etc/ssh/sshd_config

grep -i password /etc/ssh/sshd_config

grep -i '^password' /etc/ssh/sshd_config

grep 'yes$' /etc/ssh/sshd_config

grep '^#.*yes$' /etc/ssh/sshd_config

grep -i '^[^#].*yes$' /etc/ssh/sshd_config


