require "spec_helper"

describe Document do

  let(:document) { Factory.build(:document) }

  context "#file_name" do
    it "should return nil if there isn't a file" do
      mock(document).file? { false }
      document.file_name.should be_nil
    end

    it "should return the file name of an long path" do
      mock(document).file? { true }
      mock(document).file { mock!.current_path { "some/long/path/myfile.pdf" }.subject }
      document.file_name.should == "myfile.pdf"
    end
  end

  context "#viewable_now?" do
    it "should be true if viewable_at is in the past" do
      document.viewable_at = 1.day.ago
      document.viewable_now?.should be_true
    end

    it "should be false if viewable_at is in the future" do
      document.viewable_at = 1.day.from_now
      document.viewable_now?.should be_false
    end
  end

end
