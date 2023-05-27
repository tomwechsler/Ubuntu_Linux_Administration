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
docker image build -t customweb .

#List the images
docker image ls

#Remove the old container
docker container rm -f web

#Create a new container with our image
docker container run -d --name web -p 8000:80 customweb

#Test
curl localhost:8000

#And clean up
docker container rm -f web



