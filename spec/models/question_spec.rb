require File.dirname(__FILE__) + '/../spec_helper'

describe Question do
  fixtures :questions
  before(:each) do
    @question = Question.new
  end

  it "should be valid" do
    @question.should be_valid
  end

  it 'should know about correct answers' do
    question = questions(:sample)
    question.correct_answer?( 12 ).should == false
    question.correct_answer?( 42 ).should == true
  end
end
