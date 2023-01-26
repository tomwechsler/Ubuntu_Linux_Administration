#Working on ubuntu2

docker container run -d --name web nginx 

docker container inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' web 

curl <ip address>

mkdir web; echo hello > web/index.html

docker container run -d --name web -p 8000:80 -v /home/tux/web/:/usr/share/nginx/html nginx

curl localhost:8000 



Often, we need containers to host services. We can make life easier for use by mapping ports to
the container and volumes.