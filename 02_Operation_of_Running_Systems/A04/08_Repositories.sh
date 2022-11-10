sudo apt edit-sources
apt-key list
wget -O- https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.releases.hashicorp.com focal main"
sudo apt edit-sources



The file /etc/apt/sources.list and the extention directory /etc/apt/sources.list.d/
store the locations of online repositories. We can edit the file directly of add entries
to the file using add-apt-repository. Packages are digitally signed with a GPG key
which will be needed to check the authenticity of packages.