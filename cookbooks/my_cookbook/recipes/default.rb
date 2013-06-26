
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.default['my_cookbook']['greeting'] = "Hello!"

template '/tmp/greeting.txt' do
  variables greeting: node['my_cookbook']['greeting']
  #variables greeting: 'Hello!'
end