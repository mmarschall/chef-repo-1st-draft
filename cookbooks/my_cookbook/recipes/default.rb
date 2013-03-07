
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/etc/logrotate.conf" do
  source "logrotate.conf.erb"
  variables(
    :how_often => "daily",
    :keep => "31"
  )
end