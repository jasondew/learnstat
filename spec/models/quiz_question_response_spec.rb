require "spec_helper"

describe QuizQuestionResponse do

  let(:quiz_question_response) { Factory.build(:quiz_question_response) }

  it("should be valid from the factory") { quiz_question_response.should be_valid }

end
