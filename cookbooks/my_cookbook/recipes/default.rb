
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "users"

users_manage "staff" do
  group_id 50
  action [ :remove, :create ]
end