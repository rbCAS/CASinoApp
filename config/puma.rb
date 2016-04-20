#!/usr/bin/env puma

directory '/home/ec2-user/sso/current'
rackup "/home/ec2-user/sso/current/config.ru"
environment 'production'

pidfile "/home/ec2-user/sso/shared/tmp/pids/puma.pid"
state_path "/home/ec2-user/sso/shared/tmp/pids/puma.state"
stdout_redirect '/home/ec2-user/sso/shared/log/puma_access.log', '/home/ec2-user/sso/shared/log/puma_error.log', true

threads 0,8

bind 'unix:///home/ec2-user/sso/shared/tmp/sockets/puma.sock'

workers 0

prune_bundler

on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = "/home/ec2-user/sso/current/Gemfile"
end