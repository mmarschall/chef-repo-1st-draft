
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['wordpress']['db']['database'] = "my_wordpress"
node.override['wordpress']['db']['user'] = "me"
node.override['wordpress']['db']['password'] = "my_password_11"

include_recipe "apt"
include_recipe 'wordpress'

# [2013-04-27T19:29:44+00:00] INFO: Navigate to 'http://vagrant.vm/wp-admin/install.php' to complete wordpress installation

