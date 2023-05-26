find /usr/share/doc -type f -name '*.html'

find /usr/share/doc -type f -name '*.html' | cpio -ov > backup.cpio

mkdir restore && cd restore 

ls

cpio -idv --no-absolute-filenames < ~/backup.cpio

ls

tree



