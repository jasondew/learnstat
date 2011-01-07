require "spec_helper"

describe Announcement do

  let(:announcement) { Factory.build(:announcement) }

  it("should be valid from the factory") { announcement.should be_valid }

end
