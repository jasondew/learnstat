require "spec_helper"

describe QuestionChoice do

  let(:question_choice) { Factory.build(:question_choice) }

  it("should be valid from the factory") { question_choice.should be_valid }

end
