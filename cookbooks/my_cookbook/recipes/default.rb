
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# required cookbooks: database (should install all others as well...)
# build-essential, openssl, mysql, database, postgresql, xfs, aws

# knife cookbook upload --all

include_recipe 'mysql::server'
include_recipe 'mysql::ruby'

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
  privileges [:all]
  action [:create, :grant]
end

# [2013-04-23T19:32:07+00:00] INFO: Processing chef_gem[mysql] action install (mysql::ruby line 36)
# [2013-04-23T19:32:07+00:00] INFO: Processing mysql_database[my_db] action create (my_cookbook::default line 25)
# [2013-04-23T19:32:07+00:00] INFO: Processing mysql_database_user[me] action create (my_cookbook::default line 30)


#[2013-04-23T19:37:42+00:00] INFO: mysql_database_user[me]: granting access with statement [GRANT all ON *.* TO `me`@`localhost` IDENTIFIED BY [FILTERED]]

#mysql> show databases;
#+--------------------+
#| Database           |
#+--------------------+
#| information_schema |
#| my_db              |