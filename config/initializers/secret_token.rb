# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

if ENV['SECRET_TOKEN'].present?
  CASinoApp::Application.config.secret_token = ENV['SECRET_TOKEN']
elsif ENV['RAILS_GROUPS'] != 'assets'
  raise <<-ERROR

  You must generate a unique secret token for your CASinoApp.

  If you are deploying via capistrano, please ensure that your `config/deploy.rb` contains
  the `casinoapp:setup_configs` and `errbit:symlink_configs` tasks from `config/deploy.example.rb`.
  Next time you deploy, your secret token will be automatically generated.

  If you are deploying to Heroku, please run the following command to set your secret token:
  heroku config:add SECRET_TOKEN="$(bundle exec rake secret)"
  ERROR
end
