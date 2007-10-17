load 'deploy'

# ================================================================
# ROLES
# ================================================================


    role :app, "208.75.85.46"
  
    role :db, "208.75.85.46", {:primary=>true}
  
    role :www, "208.75.85.46"
  

# ================================================================
# VARIABLES
# ================================================================

# Webistrano defaults
  set :webistrano_project, "learn_stat"
  set :webistrano_stage, "production"


  set :application, "learnSTAT"

  set :deploy_to, "/var/www/learnstat.net"

  set :mongrel_config, "/var/www/learnstat.net/current/config/mongrel_cluster.yml"

  set :password, "C4pisTrano!"

  set :repository, "svn://alpha/projects/learnstat/trunk"

  set :scm_password, "C4pisTrano!"

  set :scm_username, "deploy"

  set :use_sudo, false

  set :user, "deploy"




# ================================================================
# TEMPLATE TASKS
# ================================================================

        # set Net::SSH ssh options through normal variables
        # at the moment only one SSH key is supported as arrays are not
        # parsed correctly by Webistrano::Deployer.type_cast (they end up as strings)
        [:ssh_port, :ssh_keys].each do |ssh_opt|
          if exists? ssh_opt
            logger.important("SSH options: setting #{ssh_opt} to: #{fetch(ssh_opt)}")
            ssh_options[ssh_opt.to_s.gsub(/ssh_/, '').to_sym] = fetch(ssh_opt)
          end
        end
      
        namespace :webistrano do
          namespace :mongrel do
            [ :stop, :start, :restart ].each do |t|
              desc "#{t.to_s.capitalize} mongrel"
              task t, :roles => :app, :except => { :no_release => true } do
                invoke_command "mongrel_rails cluster::#{t.to_s} -C #{mongrel_config} --clean", :via => run_method
              end
            end
          end
        end
        
        namespace :deploy do
          task :restart, :roles => :app, :except => { :no_release => true } do
            webistrano.mongrel.restart
          end
          
          task :start, :roles => :app, :except => { :no_release => true } do
            webistrano.mongrel.start
          end
          
          task :stop, :roles => :app, :except => { :no_release => true } do
            webistrano.mongrel.stop
          end
        end


# ================================================================
# CUSTOM RECIPES
# ================================================================




