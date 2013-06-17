
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "iptables"
iptables_rule "ssh"
iptables_rule "http"

execute "ensure iptables is activated" do
  command "/usr/sbin/rebuild-iptables"
  creates "/etc/iptables/general"
  action :run
end