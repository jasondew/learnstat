require File.dirname(__FILE__) + '/../spec_helper'

describe Answer do
  before(:each) do
    @valid_attributes = { :user_id => 1, :quiz_id => 1, :question_id => 1, :choice_id => 1 }

    @answer = Answer.new @valid_attributes
  end

  it "should be valid" do
    @answer.should be_valid
  end
end
