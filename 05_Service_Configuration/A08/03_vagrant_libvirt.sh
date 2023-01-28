#Working on ubuntu2

#Install vagrant
sudo apt install -y vagrant

#Create a direcrory and move in
mkdir test && cd test 

#Create the Vagrantfile
vagrant init --minimal generic/ubuntu2004

#Show the Vagrantfile
cat Vagrantfile

#Start the vm with the libvirt provider
vagrant up --provider=libvirt

#Connect to the vm
vagrant ssh

exit

#List the vm
virsh list

#Stop the vm
vagrant halt

#List the vm
virsh list --all


As we have become used to Vagrant in this course so far, we can use it in our Ubuntu system to
host VMs. The convenience and speed is still there. Once the VM is booted we can list the VM
using standard Libvirt tools but use Vagrant to connect.