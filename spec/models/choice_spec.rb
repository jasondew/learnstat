require File.dirname(__FILE__) + '/../spec_helper'

describe Choice do
  before(:each) do
    @choice = Choice.new
  end

  it "should be valid" do
    @choice.should be_valid
  end
end
