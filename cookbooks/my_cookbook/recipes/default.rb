
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# needs in Rails 4.0 Gemfile
# gem 'therubyracer', platforms: :ruby
# gem 'unicorn'
# enabled!!!

application "rails-app" do
  packages %w[ruby1.9.3 runit git sqlite3 libsqlite3-dev]

  path "/usr/local/www/rails-app"
  owner "www-data"
  group "www-data"

  environment_name "development"

  repository "https://github.com/mmarschall/rails-app.git"

  rails do 
    gems %w[bundler]

    database_template "sqlite3_database.yml.erb"

    database do
      adapter "sqlite3"
      database "db/rails-app.sqlite3"
    end
  end

  unicorn do
  end
end