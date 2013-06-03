
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.override['snmp']['syslocationVirtual'] = "Vagrant VirtualBox"
node.override['snmp']['syslocationPhysical'] = "My laptop"
node.override['snmp']['syscontact'] = "Root <root@localhost>"
node.override['snmp']['full_systemview'] = true
include_recipe "snmp"

