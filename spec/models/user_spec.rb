require "spec_helper"

describe User do

  it("a user should be valid from the factory") { Factory.build(:user).should be_valid }
  it("an instructor should be valid from the factory") { Factory.build(:instructor).should be_valid }

end
