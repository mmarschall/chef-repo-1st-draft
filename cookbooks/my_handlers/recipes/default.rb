#
# Cookbook Name:: my_handlers
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'chef_handler'

chef_gem "chef-irc-snitch"

chef_handler 'Chef::Handler::IRCSnitch' do
  action :enable
  arguments :irc_uri => "irc://nick:password@irc.domain.com:6667/#admins", :enable_ssl => true
  source File.join(Gem::Specification.find{|spec| spec.name == 'chef-irc-snitch'}.gem_dir,
    'lib', 'chef-irc-snitch.rb')
end