mkdir links

ld -ld links/

ls -ldi links/

#The same
ls -ldi links/ links/.

mkdir links/d1

ls -ldi links/ links/.

#Each subdirectory has a dot dot directory pointing to its parent
ls -ldi links/ links/. links/d1/..

#Find out all subdirectory (<number> -2)
ls -ld /etc

cd links/

echo hello > file1

ln file1 file2

ls -li

cat file1

cat file2

rm file1

cat file2

ln -s /usr/share/doc

#The little l shows it's symbolic link
ls -l

cd doc

pwd

pwd -P

cd ..

ls

ln -s file2 file3

ls -l

cat file3

#yy copy and p paste
vim file3

cat file2