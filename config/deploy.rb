set :web, :nginx
set :scm, :git
set :application, "learnstat.net"
set :domain, "learnstat.net"
set :deploy_to, "/var/www/learnstat.net"
set :repository, 'git@github.com:jasondew/learnstat.git'

namespace :vlad do

  remote_task :update do
    Rake::Task['vlad:after_update'].invoke
  end

  desc "Copy config files from shared/config to release dir"
  remote_task :after_update do
    run "ln -s #{deploy_to}/shared/config/database.yml #{deploy_to}/current/config/database.yml"
    run "ln -s #{deploy_to}/shared/documents #{deploy_to}/current/public/documents"
#    run "ln -s #{deploy_to}/shared/config/ferret_server.yml #{deploy_to}/current/config/ferret_server.yml"
    
    run "mkdir #{deploy_to}/current/index"
    run "chmod -R 0755 #{deploy_to}/current/index/"
  end

  remote_task :deploy => [:update, :migrate]
end
