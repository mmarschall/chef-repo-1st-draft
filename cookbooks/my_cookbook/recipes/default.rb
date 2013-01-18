#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
g = gem_package "ipaddress" do
  action :nothing
end
 
g.run_action(:install)
 
Gem.clear_paths
require 'ipaddress'


ip = IPAddress("192.168.0.1/24")
Chef::Log.info("Netmask of #{ip}: #{ip.netmask}")
