sudo apt -y vagrant

mkdir test && cd test 

vagrant init --minimal generic/ubuntu2004

vagrant up --provider=libvirt

virsh list

vagrant ssh



As we have become used to Vagrant in this course so far, we can use it in our Ubuntu system to
host VMs. The convenience and speed is still there. Once the VM is booted we can list the VM
using standard Libvirt tools but use Vagrant to connect.