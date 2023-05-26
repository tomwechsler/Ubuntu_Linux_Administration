sudo visudo

export EDITOR=vim

sudo visudo -f /etc/sudoers.d/defaults
Defaults env_keep += "EDITOR"

sudo visudo



