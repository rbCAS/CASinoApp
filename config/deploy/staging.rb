# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server '10.5.3.127', user: 'ec2-user', roles: %w{web app db}, primary: true

set :stage, :production
set :branch, :master

# In use by gem 'capistrano-scm-copy' for deploying with local files
set :exclude_dir, ['tmp', 'vendor']

set :ssh_options, {
    auth_methods: ['publickey'],
    keys: %w(~/.ssh/Vin65Production.pem),
    forward_agent: true
}