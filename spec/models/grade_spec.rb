require "spec_helper"

describe Grade do

  let(:grade) { Factory.build(:grade) }

  it("should be valid from the factory") { grade.should be_valid }

end
