cat .bash_logout
/usr/bin/clear_console
sed -i '$a clear' .bash_logout #appends to the last line
sed –i '$d' .bash_logout #deletes the last line



The default logout script will clear the screen for physical consoles but not pseudo-consoles.
We can add in the clear command to add privacy upon logout. Again, using sed we can append
the end of the file and delete the last line. The dollar symbol represents the last line in both
examples.