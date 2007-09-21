require File.dirname(__FILE__) + '/../spec_helper'

describe Quiz do

  before(:each) do
    @quiz = Quiz.new
    @my_quiz = Quiz.find_by_name 'Quiz 1'
  end

  it "should be valid" do
    @quiz.should_not be_nil
  end

  it 'should know whether its open or not' do
    @quiz.open?.should == false

    @quiz.due = 1.day.from_now
    @quiz.open?.should == true

    @quiz.due = 1.day.ago
    @quiz.open?.should == false
  end

  it 'should be able to report participation' do
    @quiz.due = Date.today
    @quiz.save

    @quiz.participation.should be_close(0.0, 0.0001)
    @my_quiz.participation.should be_close(1.0, 0.0001)
  end
end
