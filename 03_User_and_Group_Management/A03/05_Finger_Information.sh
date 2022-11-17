chfn
sudo adduser user6
sudo apt install -y finger
finger user6



If the GECOS field is used correctly, we can store items like the office number, the work phone
and home phone. Collectively we can refer to this additional data as "finger data" we can
set with the chfn command. If installed, we can read the data in a pretty format using the finger
command. When creating users the adduser script will set finger data.