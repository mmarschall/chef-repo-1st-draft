
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
p = bash 'install augeas' do
  code <<-EOH
    apt-get update
    apt-get -y install pkg-config ruby1.9.1-dev libaugeas-dev
    wget http://download.augeas.net/augeas-1.0.0.tar.gz
    tar xzf augeas-1.0.0.tar.gz
    cd augeas-1.0.0
    ./configure --prefix /opt/chef/embedded
    make
    make install
  EOH
  not_if "test -f /opt/chef/embedded/bin/augtool"
end
p.run_action(:run)

chef_gem "ruby-augeas"

require 'augeas'

host = Augeas::open do |aug| 
  aug.set("/files/etc/ssh/sshd_config/AcceptEnv[last()]/01", "FOO")
  aug.save!
end