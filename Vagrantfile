# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

def define_node(config, node_name, ip_address, role=nil)
  config.vm.define node_name do |node|
    node.vm.hostname = node_name.to_s
    node.vm.network :private_network, ip: ip_address
    node.vm.provision :chef_client do |chef|
      chef.node_name = node_name.to_s
      chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
      chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
      chef.validation_client_name = "agilewebops-validator"
      chef.provisioning_path = "/etc/chef"
      chef.add_role role if role
    end
  end
end

Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  define_node(config, :haproxy, "192.168.0.100")
  define_node(config, :web1, "192.168.0.101", "web_server")
  define_node(config, :web2, "192.168.0.102", "web_server")
end