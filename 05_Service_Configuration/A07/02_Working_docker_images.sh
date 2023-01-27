#Working on ubuntu2

#We create an alias for working with docker
alias docker='sudo docker'

#List the images
docker images

#An other method
docker image ls

docker image TABTAB

#The help
docker image --help

#Do not forget the man pages
man docker-image TABTAB
man docker-image-ls

#Inspect an image
docker image inspect hello-world

#Looking for the tag
docker image inspect hello-world -f '{{ .RepoTags }}'

#Set a new tag (its like hardlink)
docker image tag hello-world my-hello

#Looking for the tag
docker image inspect hello-world -f '{{ .RepoTags }}'

docker image ls 

#Find the image
sudo find /var/lib/docker -name "feb5d9fea6a5*" 

#Search for an image in docker hub
docker search ubuntu

docker search ubuntu -f is-official=true

#Get the ubuntu image
docker image pull ubuntu

#List the images
docker image ls

#Get the mysql image
docker image pull mysql

#List the images
docker image ls


Images come from the Docker Image registry at hub.docker.com. The image is cloned to running
containers as needed. Images are files in the file system based on the image id, but they are
located by the image tag and additional tags can be assigned to the same image.