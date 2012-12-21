# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  
  config.vm.provision :chef_client do |chef|
   chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
   chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
   chef.validation_client_name = "agilewebops-validator"
   chef.node_name = "vagrant"
   chef.provisioning_path = "/etc/chef"
   #chef.log_level = :debug

   #chef.add_role "base"
  end
end


