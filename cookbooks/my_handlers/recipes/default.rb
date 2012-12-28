include_recipe 'chef_handler'

chef_gem "chef-irc-snitch"

chef_handler 'Chef::Handler::IRCSnitch' do
  action :enable
  arguments :irc_uri => "irc://nick:password@irc.domain.com:6667/#admins"
  source File.join(Gem::Specification.find{|s| s.name == 'chef-irc-snitch'}.gem_dir,
    'lib', 'chef-irc-snitch.rb')
end