#Copy requires read to the source file and write to the target directory
cp

cp /etc/hosts ~

cp -i /etc/hosts ~

ls

#Overrides the existing file
cp /etc/hosts ~

cp --backup=numbered /etc/hosts ~

ls

cp --backup=numbered /etc/hosts ~

ls

ctrl +l

ls -l hosts*

rm hosts*

ls -l hosts*

#With mv we can move or rename files and requires both read and write to the source and target directories
mv

mv file1 stdout
mv file2 error
mv file3 combined

ls

mv stdout dir1

ls dir1

#no permission
mv /etc/hosts .

#The delete a file we can use rm, use -rf to delete a directory and its content
rm

rm -rf ubuntu