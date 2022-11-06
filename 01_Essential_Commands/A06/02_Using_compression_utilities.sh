#gzip / gunzip
#bzip2 / bunzip2
#xz -z / xz -d (unxz)

#tar -czf (gzip)
#tar -cjf (bzip2)
#tar -cJf (xz)

#Let's work with the etc.tar file
ls -lh

gzip etc.tar

ls -lh

gunzip etc.tar.gz

ls -lh

bzip2 etc.tar

ls -lh

bunzip2 etc.tar.bz2

xz -z etc.tar

ls -lh

unxz etc.tar.xz

ls -lh