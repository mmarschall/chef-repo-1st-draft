# -*- mode: ruby -*-
# vi: set ft=ruby :

system('chefvm use agilewebops')

Vagrant::Config.run do |config|
  config.vm.define :web do |web_config|
    web_config.vm.box = "opscode-ubuntu-12.04"
    web_config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  
    web_config.vm.provision :chef_client do |chef|
     chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
     chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
     chef.validation_client_name = "agilewebops-validator"
     chef.node_name = "web"
     chef.provisioning_path = "/etc/chef"
     #chef.log_level = :debug

     chef.add_role "web"
    end
  end

  config.vm.define :db do |db_config|
    db_config.vm.box = "opscode-ubuntu-12.04"
    db_config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  
    db_config.vm.provision :chef_client do |chef|
     chef.chef_server_url = "https://api.opscode.com/organizations/agilewebops"
     chef.validation_key_path = "/Users/mma/.chef/agilewebops-validator.pem"
     chef.validation_client_name = "agilewebops-validator"
     chef.node_name = "db"
     chef.provisioning_path = "/etc/chef"
     #chef.log_level = :debug

     chef.add_role "db"
    end
  end
end