require File.dirname(__FILE__) + '/../spec_helper'

describe QuizQuestion do

  before(:each) do
    @valid_attributes = { :quiz_id => 1, :question_id => 1 }
    @quiz_question = QuizQuestion.new @valid_attributes
  end

  it "should be valid" do
    @quiz_question.should be_valid
  end
end
