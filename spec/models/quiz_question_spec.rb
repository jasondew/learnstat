require "spec_helper"

describe QuizQuestion do

  let(:quiz_question) { Factory.build(:quiz_question) }

  it("should be valid from the factory") { quiz_question.should be_valid }

end
