# -*- mode: ruby -*-
# vi: set ft=ruby :

#Place Vagrantfile in the directory you run vagrant from.
#This should also contain ubuntu.yml which configure VMs

# setting for all VMs
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provision "ansible_local", playbook: "ubuntu.yml"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # specific for ubuntu1
  config.vm.define "ubuntu1" do |ubuntu1|
    ubuntu1.vm.hostname = "ubuntu1"
    ubuntu1.vm.network "private_network", ip: "192.168.56.101"
  end

  # specific for ubuntu2
  config.vm.define "ubuntu2" do |ubuntu2|
    ubuntu2.vm.hostname = "ubuntu2"
    ubuntu2.vm.network "private_network", ip: "192.168.56.102"
  end
end
