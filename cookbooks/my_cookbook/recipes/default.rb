#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
servers = search(:node, "platform:ubuntu")

servers.each do |srv|
  Chef::Log.info("#{srv.name}: #{srv.platform}")
end
