for user in joe sam pete ; do 
sudo useradd -m -s /bin/bash -p $(pwgenim.sh Password123?) $user 
done

tail -n3 /etc/passwd

sudo tail -n3 /etc/shadow

su - joe

exit