require 'bundler/capistrano'
load "config/recipes/base"
load "config/recipes/postgresql"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/postgresql"
load "config/recipes/nodejs"
# load "config/recipes/rbenv"
load "config/recipes/check"
load "config/recipes/rrake"

server "ticketee", :web, :app, :db, primary: true

set :user, "ticketee"
set :application, "ticketee"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
set :scm_passphrase, "foobar"  # The deploy user's password

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :scm, :git
set :repository,  "git://github.com/develop-myposit/#{application}.git"
set :branch, "master"

set :keep_releases, 2
set :bundle_flags, "--deployment --quiet --binstubs"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy", "deploy:cleanup"
