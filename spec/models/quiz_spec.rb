require "spec_helper"

describe Quiz do

  let(:quiz) { Factory.build(:quiz) }

  context "factories" do
    it("should be valid from the vanilla factory") { quiz.should be_valid }
    it("should be valid from the open quiz factory") { Factory.build(:open_quiz).should be_valid }
    it("should be valid from the closed quiz factory") { Factory.build(:closed_quiz).should be_valid }
  end

  context "#to_s" do
    it "should alias #name" do
      quiz.name = "FooBar"
      quiz.to_s.should == "FooBar"
    end
  end

  context "#attempted_by?" do
    it "should be false if there isn't a response for the given user" do
      mock(quiz).responses { mock!.by(:user) { [] }.subject }
      quiz.attempted_by?(:user).should be_false
    end

    it "should be true if there is a response for the given user" do
      mock(quiz).responses { mock!.by(:user) { [:response] }.subject }
      quiz.attempted_by?(:user).should be_true
    end
  end

end
