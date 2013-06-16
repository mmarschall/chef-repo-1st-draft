
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['haproxy']['httpchk'] = true
node.override['haproxy']['x_forwarded_for'] = true
node.override['haproxy']['app_server_role'] = "web_server"

include_recipe "haproxy::app_lb"