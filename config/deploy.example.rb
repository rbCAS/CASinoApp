require 'bundler/capistrano'
set :whenever_command, 'bundle exec whenever'
require 'whenever/capistrano'

config = YAML.load_file('config/deployment-config.yml') || {}


set :application, 'CASinoApp'
set :repository,  config['repository']
set :scm, :git
set :scm_verbose, true
set(:current_branch) { `git branch`.match(/\* (\S+)\s/m)[1] || raise("Couldn't determine current branch") }
set :branch, defer { current_branch }

role :web, config['hosts']['web']
role :app, config['hosts']['app']
role :db,  config['hosts']['db'], :primary => true

set :user, config['user']
set :use_sudo, false
set :ssh_options, { :forward_agent => true }

set :deploy_to, config['deploy_to']
set :deploy_via, :remote_cache


desc 'Deploy database.yml file'
task :deploy_database_yml, :roles => :app do
  template = File.read('config/deploy/database.yml')
  put template, "#{shared_path}/config/database.yml"
end
after 'deploy:setup', :deploy_database_yml

desc 'Deploy cas.yml file'
task :deploy_cas_yml, :roles => :app do
  template = File.read('config/deploy/cas.yml')
  put template, "#{shared_path}/config/cas.yml"
end
after 'deploy:setup', :deploy_cas_yml


after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

before 'deploy:assets:symlink', 'casinoapp:symlink_configs'

namespace :casinoapp do
  task :setup_config do
    shared_config_path = File.join(shared_path,'config')

    run "mkdir -p #{shared_config_path}"

    run %Q{if [ ! -f #{shared_config_path}/secret_token.rb ]; then
      cd #{current_release};
      echo "CASinoApp::Application.config.secret_token = '$(bundle exec rake secret)'" > #{shared_config_path}/secret_token.rb;
    fi}.compact
  end

  task :symlink_configs do
    casinoapp.setup_config
    shared_config_path = File.join(shared_path,'config')
    release_config_path = File.join(release_path,'config')
    run("ln -nfs #{shared_config_path}/cas.yml #{release_config_path}/cas.yml")
    run("ln -nfs #{shared_config_path}/secret_token.rb #{release_config_path}/initializers/secret_token.rb")
  end
end
