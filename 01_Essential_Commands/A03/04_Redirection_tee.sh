#Output from a command can be sent to the file
> file2

#To overrite we use > to append we use >>
ls -l /etc/hosts > file1

#The default is redirecting STDOUT but we can use 2 to redirect error output
ls -l /etc/Hosts 2> file2

#>> append
ls -l /etc/Hosts 2> file2

ls /etc/hosts /etc/Hosts &> file3

#The ipe or vertical bar takes the output of one command to the input of another
ls -l | wc -l

#This will not work
sudo echo "8.8.8.8 google" >> /etc/hosts

#Using the command tee, we can send output to the wcreen an too a file
echo "8.8.8.8 google" | sudo tee -a /etc/hosts

#This is also useful where we need to raise our privileges, standard redirection works with the right of the user that opened the shell

