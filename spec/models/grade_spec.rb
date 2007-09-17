require File.dirname(__FILE__) + '/../spec_helper'

describe Grade do
  before(:each) do
    @grade = Grade.new
  end

  it "should be valid" do
    @grade.should be_valid
  end
end
