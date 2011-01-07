require "spec_helper"

describe Quiz do

  let(:quiz) { Factory.build(:quiz) }

  it("should be valid from the factory") { quiz.should be_valid }

end
