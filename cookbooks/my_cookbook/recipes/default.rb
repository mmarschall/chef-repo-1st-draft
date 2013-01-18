#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/tmp/message" do
  source "message.erb"
  variables(
    :hi => "Hallo",
    :world => "Welt",
    :from => node['fqdn']
  )
end

