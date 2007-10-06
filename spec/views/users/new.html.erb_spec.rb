require File.dirname(__FILE__) + '/../../spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper
  
  before do
    @user = mock_model(User)
    @user.stub!(:new_record?).and_return(true)
    assigns[:user] = @user
  end

  it "should render new form" do
    @user.stub!(:login).and_return('')
    @user.stub!(:email).and_return('')

    @user.stub!(:first_name).and_return('')
    @user.stub!(:last_name).and_return('')
    @user.stub!(:blackboard_username).and_return('')

    @user.stub!(:password).and_return('')
    @user.stub!(:password_confirmation).and_return('')
    @user.stub!(:registration_code).and_return('')

    render "/users/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", users_path) do
    end
  end
end


