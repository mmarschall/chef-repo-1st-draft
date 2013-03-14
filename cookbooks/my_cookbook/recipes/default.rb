
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "/etc/backup_config.json" do
  owner "root"
  group "root"
  mode 0644
  content data_bag_item('servers', 'backup')['host'].to_json
 end