
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# required cookbooks: 
# build-essential, openssl, mysql, database, postgresql, xfs, aws

include_recipe 'mysql::server'

include_recipe 'database'

connection_params = {
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database 'my_db' do
  connection connection_params
  action :create
end

mysql_database_user 'me' do
  connection connection_params
  password 'my_password_11'
  action :create
end