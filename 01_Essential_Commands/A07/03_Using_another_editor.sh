sudo visudo -f /etc/sudoers.d/defaults
Defaults env_keep += "EDITOR"

export EDITOR=vim

sudo visudo



In Debian based systems the default editor will be nano. other distributions may use vim. You
can set the EDITOR variable but this needs to be allowed to pass through to sudo.