
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Log.info("Running on ubuntu") if node.platform['ubuntu']
Log.info("Running on a debian derivate") if platform_family?('debian')