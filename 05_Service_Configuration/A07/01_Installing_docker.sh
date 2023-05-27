#Working on ubuntu2

#For once, we work as root
sudo -i

#Show the links
ip link ls 

#Update the metadata
apt update && apt install -y docker.io

#Check the Service
systemctl status docker

#We have one more link
ip link ls

#The docker version
docker --version

#More information
docker info

docker info | head

#The first container
docker run hello-world

#Now we have a container and an image
docker info | head


