sudo apt edit-sources

sudo vim /etc/apt/sources.list

apt-key list

wget -O- https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo add-apt-repository "deb https://apt.releases.hashicorp.com focal main"

apt-key list

sudo apt edit-sources

sudo apt update



The file /etc/apt/sources.list and the extention directory /etc/apt/sources.list.d/
store the locations of online repositories. We can edit the file directly of add entries
to the file using add-apt-repository. Packages are digitally signed with a GPG key
which will be needed to check the authenticity of packages.