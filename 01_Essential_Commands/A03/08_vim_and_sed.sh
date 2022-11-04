vim +1 hosts

vim +$ ~/hosts

vim +/google/ ~/hosts

vimtutor

sed -i '1i #This is a hosts file' ~/hosts

head

sed -i '$d' ~/hosts

tail

sed -i 's/google/googledns/' ~/hosts

cat hosts