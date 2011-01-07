require "spec_helper"

describe QuestionResponse do

  let(:question_response) { Factory.build(:question_response) }

  it("should be valid from the factory") { question_response.should be_valid }

end
