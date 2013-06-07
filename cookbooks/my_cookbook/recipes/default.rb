
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
ohai "reload_lldp" do
  action :nothing
  plugin "lldp"
end

file "#{node['ohai']['plugin_path']}/lldp.rb" do
  owner "root"
  group "root"
  mode 00755
  notifies :reload, 'ohai[reload_lldp]', :immediately
end

include_recipe "ohai"