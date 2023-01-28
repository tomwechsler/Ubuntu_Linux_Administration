#Working on ubuntu2

#Install the tools
sudo apt -y install bridge-utils libvirt-clients libvirt-daemon qemu qemu-kvm
sudo apt -y install cockpit cockpit-machines

#Or you can use the script
bash install_kvm.sh

#Group membership of vagrant
id

#Add some groups
sudo usermod -aG kvm tom

sudo usermod -aG libvirt tom

#Group membership of vagrant
id
id vagrant

#Exit and login again

#Group membership of vagrant
id

#Check the ports
ss -ntl

#On the physical host open the browser
https://192.168.56.102:9090

#Create a new vm

#Back on ubuntu2

#List the vm
virsh list

virsh list --all

#Stop the vm
virsh destroy u1

#List the vm
virsh list --all

#Start the vm
virsh start u1

#To delete the vm
virsh undefine u1




Linux Virtual Machines often use Libvirt/qemu-kvm as the hypervisor. We will install the
hypervisor and tools. As we do not have a GUI environment to easily install VMs we can use the
Cockpit Web Interface. Additionally, web add out own user account to the kvm and libvirt group
to allow management of virtual machines. Dont forget to logout and in again to pick up group
memberships.