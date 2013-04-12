
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.default['authorization']['sudo']['passwordless'] = true
node.default['authorization']['sudo']['groups'] = ["staff"]

include_recipe "sudo"