#
# Cookbook Name:: my-nagios
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'nagios::client'

remote_dir = node['nagios']['plugin_dir']
resources("remote_directory[#{remote_dir}]").cookbook "my-nagios"