require 'erb'
require 'capistrano/ext/multistage'

set :use_sudo, false
set :stages, %w(production demo)

set :scm, :git
set :repository, "git@learnstat:jasondew/learnstat.git"
set :deploy_via, :remote_cache

set :ssh_options, { :port => 2251, :keys => ["~/.ssh/id_rsa_learnstat"] }

namespace :deploy do

  desc "Restart services"
  task :restart, :roles => :app do
    deploy.stop
    deploy.start
  end

  desc "Start services"
  task :start, :roles => :app do
    run "thin start -C #{shared_path}/config/thin.yml"
  end

  desc "Stop services"
  task :stop, :roles => :app do
    run "thin stop  -C #{shared_path}/config/thin.yml"
  end

end
