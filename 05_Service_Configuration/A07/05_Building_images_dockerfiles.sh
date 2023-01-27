#Working on ubuntu

#Change into web
cd web

#Use vim to create a Dockerfile
vim Dockerfile

FROM ubuntu 
RUN apt-get update && apt-get install -y nginx 
EXPOSE 80/tcp 
ADD index.html /var/www/html/ 
CMD ["nginx", "-g", "daemon off;" ] 

#Save and exit

#Do not forget the dot at the end
docker image  build -t customweb .

#List the images
docker image ls

#Remove the old container
docker container rm -f web

#Create a new container with our image
docker container run -d --name web -p 8000:80 customweb

#Test
w3m localhost:8000

#And clean up
docker container rm -f web



A Dockerfile (withuppercase D) can be used to specify the build of a new image. Dont forget
the . at the end of the build command indicating the current directory. Here, we add the web
content to the image, eliminating the need to map a volume but affording less flexibility.