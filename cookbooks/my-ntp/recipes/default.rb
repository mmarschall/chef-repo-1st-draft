#
# Cookbook Name:: my-ntp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ntp::ntpdate'

resources("template[/etc/default/ntpdate]").cookbook "my-ntp"