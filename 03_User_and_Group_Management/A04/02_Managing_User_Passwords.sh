sudo passwd user1
echo 'user1:[Password123?]' | sudo chpasswd
sudo chpasswd
user1:[Password1]
user2:[Password2]
CTRL+D
sudo chpasswd < users



Although we are used to the passwd command, we have to enter a user`s password twice to set
it. If we are creating many users, it is not the best idea. To script password management we
have chpasswd.