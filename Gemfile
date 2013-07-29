source 'https://rubygems.org'

gem 'rails', '3.2.12'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

gem 'jquery-rails'

gem 'casino_core', github:'dlindahl/CASinoCore', branch:'feature/move_persistance_to_casino'
gem 'casino',      github:'dlindahl/CASino',     branch:'issues/casino_core/12/persistance'
gem 'casino_core-authenticator-ldap'
gem 'casino_core-authenticator-activerecord'

gem 'whenever', :require => false

group :sqlite do
  gem 'sqlite3'
end

group :mysql do
  gem 'mysql2'
end

group :postgresql do
  gem 'pg'
end

group :development do
  gem 'capistrano'
end
