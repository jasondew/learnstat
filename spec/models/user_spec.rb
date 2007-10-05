require File.dirname(__FILE__) + '/../spec_helper'

  def create_user(options = {})
    User.create( user_attributes.merge(options) )
  end

describe User do

  fixtures :users, :question_responses

  before(:each) do
    @user = User.new
    @instructor = users(:instructor)
    @student_1 = users(:student_1)
    @student_2 = users(:student_2)
  end

  it 'should know its name(s)' do
    @instructor.name.should == 'Jason'
    @instructor.full_name.should == 'Jason Dew'
  end

  it 'should know its mean score' do
    @student_1.mean_score.should == 0.6
    @student_2.mean_score.should == 0.4
  end

end

describe "A new User" do

  fixtures :courses

  it "should be created" do
    lambda {
        user = create_user 
        user.should be_valid
        user.should_not be_new_record 
    }.should change(User, :count).by(1)
  end
  
  it "should require login" do
    lambda{ 
      u = create_user(:login => nil)
      u.should have_at_least(1).errors_on(:login) 
    }.should_not change(User,:count)
  end
  
  it "should require password" do
    lambda{ 
      u = create_user(:password => nil)
      u.should have_at_least(1).errors_on(:password)
    }.should_not change(User,:count)
  end

  it "should require password confirmation" do
    lambda{ 
      u = create_user(:password_confirmation => nil)
      u.should have_at_least(1).errors_on(:password_confirmation)
    }.should_not change(User,:count)
  end

  it "should require email" do
    lambda{ 
      u = create_user(:email => nil)
      u.should have_at_least(1).errors_on(:email)
    }.should_not change(User,:count)
  end
  
  it "should not be activated" do
    u = create_user
    u.should_not be_activated
  end
  
  it "should allow activation" do
    u = create_user
    u.should_not be_activated
    u.activate
    u.should be_activated
  end

  it 'should not allow an invalid registration code' do
    u = create_user(:registration_code => 'stupid')
    u.should have_at_least(1).error_on(:registration_code)
  end

  it 'should know if its recently activated' do
    u = create_user
    u.activate
    u.should be_recently_activated
  end
  
end

describe "User with fixtures loaded" do
  fixtures :users

  it 'should know its not recently activated' do
    users(:student_1).should_not be_recently_activated
  end

  it "should reset password" do
    users(:student_1).update_attributes(:password => 'password', :password_confirmation => 'password')
    users(:student_1).should == User.authenticate('student','password')
  end

  it "should not rehash password" do
    users(:student_1).update_attributes(:login => 'student')
    users(:student_1).should == User.authenticate('student', 'password')
  end

  it "should authenticate user" do
    users(:student_1).should == User.authenticate('student', 'password')
  end

  it "should set remember token" do
    users(:student_1).remember_me
    users(:student_1).remember_token.should_not be_nil
    users(:student_1).remember_token_expires_at.should_not be_nil
    users(:student_1).should be_remember_token
  end
  
  it "should unset remember token" do
    users(:student_1).remember_me
    users(:student_1).remember_token.should_not be_nil
    users(:student_1).forget_me
    users(:student_1).remember_token.should be_nil
  end
  
  it "should remember me for one week" do
    before = 1.week.from_now
    users(:student_1).remember_me_for 1.week
    after = 1.week.from_now
    users(:student_1).remember_token.should_not be_nil
    users(:student_1).remember_token_expires_at.should_not be_nil
    users(:student_1).remember_token_expires_at.should be_between(before, after)
  end
  
  it "should remember me until one week" do
    time = 1.week.from_now
    users(:student_1).remember_me_until time
    users(:student_1).remember_token.should_not be_nil
    users(:student_1).remember_token_expires_at.should_not be_nil
    users(:student_1).remember_token_expires_at.should == time
  end
  
  it "should remember me for two week by default" do
    before = 2.week.from_now
    users(:student_1).remember_me
    after = 2.week.from_now
    users(:student_1).remember_token.should_not be_nil
    users(:student_1).remember_token_expires_at.should_not be_nil
    users(:student_1).remember_token_expires_at.should be_between(before, after)
  end

end
