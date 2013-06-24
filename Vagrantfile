# -*- mode: ruby -*-
# vi: set ft=ruby :

# see: https://github.com/opscode/bento
# and: https://github.com/schisamo/vagrant-omnibus

system('chefvm use agilewebops')

def define_node(config, node_name, ip_address=nil, role=nil)
  config.vm.define node_name do |node|
    node.vm.hostname = node_name.to_s
    node.vm.network :private_network, ip: ip_address if ip_address     
    config.vm.provision "chef_solo" do |chef|
      #chef.add_recipe "apache"
    end
  end
end

Vagrant.configure("2") do |config|
  config.omnibus.chef_version = :latest

  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  define_node(config, :server)
end