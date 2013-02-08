#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['my_cookbook']['version'] = "1.5"

execute 'echo the path attribute' do
  command "echo #{node['my_cookbook']['version']}"
end
