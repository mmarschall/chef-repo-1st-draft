
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "iptables"
iptables_rule "ssh"

include_recipe "fail2ban"

file "/etc/fail2ban/jail.local" do
  
end