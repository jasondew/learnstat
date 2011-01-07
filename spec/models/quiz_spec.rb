require "spec_helper"

describe Quiz do

  let(:quiz) { Factory.build(:quiz) }

  it("should be valid from the factory") { quiz.should be_valid }

  it "should alias to_s to name" do
    quiz.name = "FooBar"
    quiz.to_s.should == "FooBar"
  end

end
