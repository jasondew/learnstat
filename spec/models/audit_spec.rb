require File.dirname(__FILE__) + '/../spec_helper'

describe Audit do
  before(:each) do
    @audit = Audit.new
  end

  it "should be valid" do
    @audit.should be_valid
  end
end
