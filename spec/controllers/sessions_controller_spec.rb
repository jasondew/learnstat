require File.dirname(__FILE__) + '/../spec_helper'

context SessionsController do

  fixtures :users

  it "should redirect to /courses after successful login" do   
    post :create, :login => 'student', :password => 'password'
    response.should redirect_to('/courses')
    should_be_logged_in
  end

  it "should not redirect after failed login" do
    post :create, :login => 'student', :password => 'bad password'
    response.should be_success
    should_not_be_logged_in
  end

  it "should remember me" do
    post :create, :login => 'student', :password => 'password', :remember_me => '1'
    response.cookies["auth_token"].should_not be_nil
  end

  it "should not remember me" do
    post :create, :login => 'student', :password => 'password', :remember_me => '0'
    response.cookies["auth_token"].should be_nil
  end

  it "should delete auth token on logout" do
    login_as :student_1
    get :destroy
    response.cookies["auth_token"].should be_empty
    should_not_be_logged_in
  end

  it "should login with cookie" do
    users(:student_1).remember_me
    request.cookies["auth_token"] = cookie_for(:student_1)
    get :new
    should_be_logged_in
  end

  it "should fail to login with expired cookie" do
    users(:student_1).remember_me
    users(:student_1).update_attribute :remember_token_expires_at, 15.minutes.ago
    request.cookies["auth_token"] = cookie_for(:student_1)
    get :new
    should_not_be_logged_in
  end

  it "should fail to login with invalid cookie" do
    users(:student_1).remember_me
    request.cookies["auth_token"] = auth_token('invalid_auth_token')
    get :new
    should_not_be_logged_in
  end

end
