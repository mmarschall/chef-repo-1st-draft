#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
hook = data_bag_item('hooks', 'RequestBin')
http_request "callback" do
  url hook['url']
end