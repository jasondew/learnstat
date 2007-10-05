require File.dirname(__FILE__) + '/../spec_helper'

describe Announcement do
  before(:each) do
    @announcement = Announcement.new
  end

  it "should be valid" do
    @announcement.should be_valid
  end
end
