require File.dirname(__FILE__) + '/../spec_helper'

describe Quiz do

  fixtures :courses, :quizzes

  before(:each) do
    @quiz = Quiz.new
  end

  it "should be valid" do
    @quiz.should be_valid
  end

  it 'should know what course it belongs to' do
    quizzes(:first).course.should == course(:stat110)
  end
end
