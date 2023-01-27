#On the host

#Create a new directory and put the Vagrantfile in it

#Create the vm
vagrant up

#Connect to the vm
vagrant ssh

#Update the metadata and install the cpu tool
sudo apt update && sudo apt install -y cpu-checker

#Ceck the system
sudo kvm-ok

#What is kvm-ok
file /usr/sbin/kvm-ok

#Lets look at the script
less /usr/sbin/kvm-ok



Installing the cpu-checker package is a simple way to test your system does support virtual
machines. We set the option in VirtualBox but this is often a CPU option in system BIOS. We are
checking flags on the CPU but the hard work is done but kvm-ok.