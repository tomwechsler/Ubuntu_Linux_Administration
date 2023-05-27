cat .bash_logout

/usr/bin/clear_console

sed -i '$a clear' .bash_logout #appends to the last line

sed –i '$d' .bash_logout #deletes the last line


