
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
sudo 'mma' do
  template    'staff_member.erb' # local cookbook template
  variables   :cmds => ['/etc/init.d/ssh restart']
end