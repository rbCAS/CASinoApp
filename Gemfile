source 'https://rubygems.org'

# Rails
gem 'rails', '4.1.2'
gem 'activerecord', '4.1.2'

gem 'puma'

# Database Adapters
gem 'mysql2', '~> 0.3.0'
gem 'tiny_tds'
gem 'activerecord-sqlserver-adapter', '~> 4.1.2'
# Rails version is limited by activerecord-sqlserver-adapter gem because 4.1.2 is needed to talk to MS SQL Server 2008

# CASino
gem 'casino', git: 'https://github.com/Vin65/CASino.git', branch: 'master'
gem 'casino-activerecord_authenticator', git: 'https://github.com/Vin65/casino-activerecord_authenticator.git', branch: 'master'

# App
gem 'http_accept_language', '~> 2.0'
gem 'whenever', require: false # Cron Jobs

# AWS
gem 'aws-healthcheck'

group :assets do
  gem 'sass-rails', '~> 4.0.3'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

group :development do
  gem 'casino-test_authenticator', git: 'https://github.com/ramanbuttar/casino-test_authenticator.git', branch: 'master'

  # Capistrano
  gem 'capistrano',             require: false
  gem 'capistrano-ext',         require: false
  gem 'capistrano-rails',       require: false
  gem 'capistrano-rvm',         require: false
  gem 'capistrano3-puma',       require: false
  gem 'capistrano3-nginx',      require: false
  gem 'capistrano-bundler',     require: false
  gem 'capistrano-scm-copy',    require: false

  gem 'awesome_print', require: 'ap'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'byebug'
end
