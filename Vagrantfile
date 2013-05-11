# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

Vagrant::Config.run do |config|
  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  # unicorn, Rails app
  config.vm.forward_port 8080, 4567
  # varnish
  config.vm.forward_port 6081, 6081
  
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