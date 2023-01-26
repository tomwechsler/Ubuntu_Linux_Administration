#Working on ubuntu2 (Don't forget we created an alias for Docker)

#The alias
alias

#The old way
docker ps

docker ps -a

#New way
docker container ls

docker container ls -a

#Remove all stopped containers
docker container TABTAB

docker container prune

#Check
docker container ls -a

#Creates a container
docker container run ubuntu 

#Check
docker container ls ; docker container ls -a

#Create a container (-i interactive; -t pseudo-TTY)
docker container run -it --name u1 ubuntu 

cat /etc/os-release

exit

#The containers are stopped
docker container ls ; docker container ls -a

#Start a container
docker container start -i u1

exit

#The containers are stopped
docker container ls ; docker container ls -a

#Create a new container
docker container run -it --name u2 ubuntu 

CTRL + pq

#The container is still up
docker container ls ; docker container ls -a

#Show the links
ip link ls

#Stop the container
docker container stop u2

#Check and prune
docker container ls -a ; docker container prune




Containers are cloned from images with the docker run command. Assign a name to the
container to avoid auto-generated name. The Ubuntu image runs bash by default and exit will
stop the container. To keep the container running use CTRL+pq.