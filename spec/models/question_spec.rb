require "spec_helper"

describe Question do

  let(:question) { Factory.build(:question) }

  it("should be valid from the factory") { question.should be_valid }

  context "#correct_answer?" do
    before { question.answer = 2 }

    it "should be true when given the correct answer" do
      question.correct_answer?(2).should be_true
    end

    it "should be false when given the wrong answer" do
      question.correct_answer?(3).should be_false
    end
  end

end
