require 'mongrel_cluster/recipes'

set :application, "learnSTAT"
set :repository,  "svn://alpha/projects/learnstat/trunk"

set :user, "root"
set :scm_username, "deploy"
set :scm_password, "C4pisTrano!"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/learnstat.net"
set :mongrel_conf, "#{current_path}/config/mongrel_cluster.yml"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "alpha"
role :web, "alpha"
role :db,  "alpha", :primary => true
