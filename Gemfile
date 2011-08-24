source "http://rubygems.org"

gem "rails", "~>3.0.0"
gem "sqlite3-ruby", :require => "sqlite3"
gem "andand"
gem "haml"
gem "prawn", "0.11.1.pre"
gem "coded_options"
gem "inherited_resources"
gem "has_scope"
gem "simple_form"
gem "authlogic", :git => "git://github.com/odorcicd/authlogic.git", :branch => "rails3"
gem "carrierwave"
gem "fog"

gem "escape_utils"

group :development do
  gem "awesome_print"
  gem "wirble"
  gem "utility_belt"
  gem "thin"
  gem "autotest"
  gem "autotest-growl"
  gem "autotest-fsevent"
  gem "rspec-rails"
  gem "cucumber-rails"
end

group :production do
  gem "exception_notification", :git => "git://github.com/rails/exception_notification", :branch => "master", :require => "exception_notifier"
end

group :test do
  gem "rspec-rails"
  gem "cucumber-rails"
  gem "capybara", :git => "git://github.com/jnicklas/capybara", :tag => "0.3.9"
  gem "database_cleaner"
  gem "shoulda"
  gem "factory_girl"
  gem "rr"
  gem "launchy"
end
