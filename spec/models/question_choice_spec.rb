require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionChoice do
  before(:each) do
    @question_choice = QuestionChoice.new
  end

  it "should be valid" do
    @question_choice.should be_valid
  end
end
