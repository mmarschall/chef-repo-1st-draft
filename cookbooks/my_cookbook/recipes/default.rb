
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
  content <<-EOS
  [ssh-ddos]

enabled  = true
port     = ssh
filter   = sshd-ddos
logpath  = /var/log/auth.log
maxretry = 6
  EOS
    owner "root"
    group "root"
    mode 0644
    notifies :restart, "service[fail2ban]"
end