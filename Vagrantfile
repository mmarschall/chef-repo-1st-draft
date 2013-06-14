# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  num_nodes = 2
  ip_address_prefix = "192.168.0.10"

  1.upto(num_nodes) do |num|
    node_name =  ("ha" + num.to_s).to_sym
    config.vm.define node_name do |node|
      node.vm.hostname = node_name.to_s
      node.vm.network :private_network, ip: ip_address_prefix + num.to_s
      node.vm.provision :chef_client do |chef|
        chef.node_name = node_name.to_s
        chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
        chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
        chef.validation_client_name = "agilewebops-validator"
        chef.provisioning_path = "/etc/chef"
      end
    end
  end
end