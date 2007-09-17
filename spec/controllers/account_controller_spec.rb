require File.dirname(__FILE__) + '/../spec_helper'

describe AccountController do

  #Delete this example and add some real ones
  it "should use AccountController" do
    controller.should be_an_instance_of(AccountController)
  end

  it 'should allow a valid instructor to login' do
    post 'login', { :login => 'jasondew', :password => 'studentpass' }
    response.should redirect_to( :controller => :instructor )
  end

  it 'should allow a valid student to login' do
    post 'login', { :login => 'student', :password => 'studentpass' }
    response.should redirect_to( :controller => :student )
  end

  it 'shouldn''t allow an invalid login' do
    post 'login', { :login => 'student', :password => 'wrongpassword' }
    response.should redirect_to( :action => :login )
  end

  it 'should allow users to logout' do
    get 'logout'
    response.should redirect_to( :action => :login )
  end

  it 'should allow account signups' do
    @valid_attributes = { :login => 'test', :email => 'test', :blackboard_username => 'test',
                          :password => 'testpass', :password_confirmation => 'testpass',
                          :registration_code => 'stat110f07' }

    post 'signup', { :user => @valid_attributes }
    response.should redirect_to( :controller => :student )
  end

end
