#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
message = 'Hello argument!'

execute 'echo message into tmp file' do
  command "echo #{message} > /tmp/message"
end
