require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  before(:each) do
    @user = User.new
    @my = User.find_by_login 'jasondew'
    @student = User.find_by_login 'student'

    @quiz = Quiz.find_by_name 'Quiz 1'

    @valid_attributes = { :login => 'test', :email => 'test', :blackboard_username => 'test',
                          :password => 'testpass', :password_confirmation => 'testpass',
                          :registration_code => 'stat110f07' }
  end

  it 'should be valid' do
    @user.should_not == nil
    User.new( @valid_attributes ).save.should == true
  end

  it 'should authenticate properly' do
    User.authenticate('student', 'studentpass').should == @student
  end

  it 'should require the registration code' do
    User.new( @valid_attributes.update( { :registration_code => 'stupid' } ) ).save.should == false
  end

  it 'should remember the registration code it was given' do
    user = User.create @valid_attributes
    user.registration_code.should == 'STAT110F07'
  end

  it 'should respond with a valid name' do
    @user.name.should == 'Anonymous'
    @my.name.should == 'Jason'
    @student.name.should == 'Anonymous'
  end

  it 'should handle quiz grades' do
    @student.grade_on_quiz( @quiz.id ).should be_close( 0.725, 0.0001 )
    @student.attempted_quiz?( 152 ).should == false
  end
end
