#Working on ubuntu2

#Create a new container (the image will be also downloaded)
docker container run -d --name web nginx 

#Check the links
ip link ls

#The IP from the container
docker container inspect web

docker container inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' web 

docker container inspect web | grep -i address #A bit easier

#The default page
w3m <ip address>

#Remove the container
docker container rm -f web

#Create a directory and a new index.html file
mkdir web; echo hello > web/index.html

#Port and volume mapping
docker container run -d --name web -p 8000:80 -v /home/vagrant/web/:/usr/share/nginx/html -p 8000:80 nginx

#Lets test
curl localhost:8000 



Often, we need containers to host services. We can make life easier for use by mapping ports to
the container and volumes.