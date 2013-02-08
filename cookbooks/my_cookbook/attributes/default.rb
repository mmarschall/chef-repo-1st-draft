default['my_cookbook']['version'] = '1.2.6'
default['my_cookbook']['target_dir'] = '/opt'

default['my_cookbook']['path'] = "#{node['my_cookbook']['target_dir']}/my_cookbook-#{node['my_cookbook']['version']}"
