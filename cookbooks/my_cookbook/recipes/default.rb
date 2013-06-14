
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "heartbeat"

heartbeat "heartbeat" do
  authkeys "MySecrectAuthPassword"
  autojoin "none"
  deadtime 15
  initdead 60
  keepalive 2
  warntime 5
  logfacility "syslog"
  interface "eth0"
  mode "bcast"
  udpport 694
  auto_failback true

  resources "10.0.2.100"

  search "name:ha*"
end
