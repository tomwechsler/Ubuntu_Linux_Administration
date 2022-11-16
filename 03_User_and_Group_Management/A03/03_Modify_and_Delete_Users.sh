sudo usermod -G staff user2
id user2
sudo usermod -aG admin,sudo user2
id user2
sudo userdel -r user5
sudo userdel user3
ls /home
sudo find /home /var -nouser
!! -delete



We also have the usermod and userdel commands to further manage our users. Be aware that if
we modify the group membership we will overwrite the current groups unless we append. When
deleting accounts, we can also delete system created user files with -r.