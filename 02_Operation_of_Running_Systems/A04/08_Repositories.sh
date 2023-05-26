sudo apt edit-sources

sudo vim /etc/apt/sources.list

apt-key list

wget -O- https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo add-apt-repository "deb https://apt.releases.hashicorp.com focal main"

apt-key list

sudo apt edit-sources

sudo apt update



