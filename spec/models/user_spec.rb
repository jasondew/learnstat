require "spec_helper"

describe User do

  let(:user) { Factory.build(:user) }

  it("should be valid from the factory") { user.should be_valid }

end
