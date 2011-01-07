require "spec_helper"

describe Course do

  let(:course) { Factory.build(:course) }

  it("should be valid from the factory") { course.should be_valid }

  #FIXME please add tests!

end
