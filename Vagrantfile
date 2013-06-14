# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  config.vm.define :ha1 do |ha1|
    ha1.vm.hostname = "ha1"
    ha1.vm.provision :chef_client do |chef|
     chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
     chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
     chef.validation_client_name = "agilewebops-validator"
     chef.node_name = "ha1"
     chef.provisioning_path = "/etc/chef"
    end
  end

  config.vm.define :ha2 do |ha2|
    ha2.vm.hostname = "ha2"
    ha2.vm.provision :chef_client do |chef|
     chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
     chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
     chef.validation_client_name = "agilewebops-validator"
     chef.node_name = "ha2"
     chef.provisioning_path = "/etc/chef"
    end
  end
end