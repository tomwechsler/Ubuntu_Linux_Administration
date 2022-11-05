umask 7

touch another_newfile

ls -l another_newfile

chmod -v +x another_newfile

chmod a+x another_newfile



Another misunderstanding the difference between:
chmod +x file and
chmod a+x file omitting the object, chmod applied permissions allowed via the unmask.
Using -a exlicitly, permissions are assigned regardless of the umask.