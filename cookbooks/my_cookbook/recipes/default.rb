
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['openssh']['server']['permit_root_login'] = "no"

include_recipe 'openssh'