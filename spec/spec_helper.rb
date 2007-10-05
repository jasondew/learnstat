# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'spec/rails'

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures'

  # You can declare fixtures for each behaviour like this:
  #   describe "...." do
  #     fixtures :table_a, :table_b
  #
  # Alternatively, if you prefer to declare them only once, you can
  # do so here, like so ...
  #
  #   config.global_fixtures = :table_a, :table_b
  #
  # If you declare global fixtures, be aware that they will be declared
  # for all of your examples, even those that don't use them.

  config.global_fixtures = :users
end

  def user_attributes
    { :login                 => 'new_user',
      :first_name            => 'new',
      :last_name             => 'user',
      :email                 => 'some_random_email@sc.edu',
      :password              => 'password', 
      :password_confirmation => 'password',
      :registration_code     => 'stat110f07'
    }
  end

  def login_as(user)
    request.session[:user] = user ? users(user).id : nil
  end

  def auth_token(token)
    CGI::Cookie.new('name' => 'auth_token', 'value' => token)
  end

  def cookie_for(user)
    auth_token users(user).remember_token
  end

  def should_be_logged_in
    response.session.should_not be_nil
    response.session[:user].should_not be_nil
  end

  def should_not_be_logged_in
    response.session.should_not be_nil
    response.session[:user].should be_nil
  end

