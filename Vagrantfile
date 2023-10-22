# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# # you're doing.
# Vagrant.configure("2") do |config|
#   config.vm.box = "perk/ubuntu-2204-arm64"
#   config.vm.box_version = "20230712"
#   config.vm.synced_folder ".", "/vagrant", disabled: true
#   config.vm.network "private_network", type: "dhcp" 
#   config.vm.provision "shell", path: "lamp.sh"
#   config.vm.provider "qemu" do |q|
#     q.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
#     q.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
#   end
# end

Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu1804"
  
      config.vm.define "master" do |master|
        master.vm.network "private_network", type: "dhcp"  
        master.vm.hostname = "master"
        
      end
      master.vm.network :forwarded_port, guest: 22, host: 50021, auto_correct: true
    end
    
    config.vm.define "slave", do |slave|
      slave.vm.hostname = "slave"
      slave.vm.network  "private_network", type: "dhcp"
    end
    # config.vm.define "web" do |web_config|
    #   web_config.vm.provider "qemu" do |web|
    #     web.arch = "x86_64"
    #     web.machine = "q35"
    #     web.cpu = "max"
    #     web.net_device = "virtio-net-pci"
    #   end
    # end
end
  
  