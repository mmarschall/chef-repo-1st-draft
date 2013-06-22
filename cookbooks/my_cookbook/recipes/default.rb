
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "iptables"
iptables_rule "ssh"

ohai "reload_iptables_plugin" do
  action :nothing
  plugin "iptables"
end

file "#{node['ohai']['plugin_path']}/iptables.rb" do
  owner "root"
  group "root"
  mode 00755
  notifies :reload, 'ohai[reload_iptables_plugin]', :immediately
end

include_recipe "ohai"