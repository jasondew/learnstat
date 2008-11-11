set :thin_port, "8100"

set :deploy_to, "/var/www/learnstat.net"
set :rails_env, "production"

role :web, "deployer@deploy-learnstat", :ssh_options => { :port => 2251, :keys => ["~/.ssh/id_rsa_learnstat"] }
role :app, "deployer@deploy-learnstat", :ssh_options => { :port => 2251, :keys => ["~/.ssh/id_rsa_learnstat"] }
role :db, "deployer@deploy-learnstat", :ssh_options => { :port => 2251, :keys => ["~/.ssh/id_rsa_learnstat"] }, :primary => true

set :mysql_username, 'root'
set :mysql_password, 'doc1291'

before "deploy:setup", "db:write_configs"
after "deploy:update_code", "db:symlink"

namespace :db do
  desc "Create configs in shared path"
  task :write_configs, :roles => [:web, :app] do
    run "mkdir -p #{shared_path}/config"

    db_config = ERB.new <<-EOF
#{rails_env}:
  database: learnstat_#{rails_env}
  adapter: mysql
  host: localhost
  username: #{mysql_username}
  password: #{mysql_password}
  socket: /var/run/mysqld/mysqld.sock
    EOF

    thin_config = ERB.new <<-EOF
--- 
port: #{thin_port}
environment: #{rails_env}
servers: 1
chdir: #{deploy_to}/current
log: #{shared_path}/log/thin.log
pid: #{shared_path}/pids/thin.pid
timeout: 30
max_conns: 1024
max_persistent_conns: 512
daemonize: true
    EOF

    put db_config.result, "#{shared_path}/config/database.yml"
    put thin_config.result, "#{shared_path}/config/thin.yml"
  end

  desc "Create symlink for configs"
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/thin.yml #{release_path}/config/thin.yml"
  end
end
