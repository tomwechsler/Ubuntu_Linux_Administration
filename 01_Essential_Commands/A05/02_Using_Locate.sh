sudo apt install -y mlocate
sudo updatedb
locate -S
locate "hosts"
locate -i"hosts"
locate -e -i"hosts"



Rather than dynamically searching the complete filesystem we can search a database for
efficient operation.