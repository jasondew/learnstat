require File.dirname(__FILE__) + '/../spec_helper'

describe UsersController do

  def create_user(options = {})
    post :create, :user => user_attributes.merge(options)
  end

  before(:each) do
    @user = mock('user')
  end

  it "should allow signup" do
    lambda do 
      create_user
      response.should redirect_to('/login')
    end.should change(User,:count).by(1)
  end

  it "should require login on signup" do
    create_user :login => nil 
    response.should be_success
    assigns(:user).should have_at_least(1).errors_on(:login)
  end

  it "should require password on signup" do
    create_user :password => nil
    response.should be_success
    assigns(:user).should have_at_least(1).errors_on(:password)
  end

  it "should require password confirmation on signup" do
    create_user :password_confirmation => nil 
    response.should be_success
    assigns(:user).should have_at_least(1).errors_on(:password_confirmation)
  end

  it "should require email on signup" do
    create_user :email => nil 
    response.should be_success
    assigns(:user).should have_at_least(1).errors_on(:email)
  end
  
  it "should fall back to new if save failed" do
    post :create, :user => {}
    response.should render_template('new')
    assigns(:user).should have_at_least(1).errors
  end
  
end
