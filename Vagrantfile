# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

def define_node(config, node_name, ip_address=nil, role=nil)
  config.vm.define node_name do |node|
    node.vm.hostname = node_name.to_s
    node.vm.network :private_network, ip: ip_address if ip_address
  end
end

Vagrant.configure("2") do |config|
  #config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  #config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  # first, run:
  # vagrant box add precise32-vanilla https://dl.dropboxusercontent.com/u/165709740/boxes/precise32-vanilla.box
  config.vm.box = "precise32-vanilla"

  define_node(config, :bootstrapped)
end