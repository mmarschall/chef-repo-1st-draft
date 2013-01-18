#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
ip = '10.10.0.0/24'
Chef::Log.info("Netmask of #{ip}: #{netmask(ip)}")