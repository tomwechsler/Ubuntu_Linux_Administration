# -*- mode: ruby -*-
# vi: set ft=ruby :

#Place Vagrantfile in the directory you run vagrant from.

#setting for the centos VM
Vagrant.configure("2") do |config|
  #config.vm.box = "base"

  config.vm.define "centos" do |centos|
    centos.vm.provider "virtualbox" do |vb_centos|
      vb_centos.memory = "2048"
      vb_centos.cpus = "2"
    end

    centos.vm.box = "centos/7"
    centos.vm.hostname = "centos"
    centos.vm.network "private_network", ip: "192.168.56.101"

  end

#settings for the ubuntu VMs
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.provider "virtualbox" do |vb_ubuntu|
	vb_ubuntu.memory = "2048"
	vb_ubuntu.cpus = "2"
	end
		
	ubuntu.vm.box = "ubuntu/focal64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.56.102"
	
  end
  
  config.vm.define "ctrlnode" do |ctrlnode|
	ctrlnode.vm.provider "virtualbox" do |vb_ctrlnode|
	vb_ctrlnode.memory = "4096"
	vb_ctrlnode.cpus = "4"
	end
	
	ctrlnode.vm.box = "ubuntu/focal64"
    ctrlnode.vm.hostname = "ctrlnode"
    ctrlnode.vm.network "private_network", ip: "192.168.56.103"
	
  end
  
end