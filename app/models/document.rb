class Document < ActiveRecord::Base

  include TextualDateTimes

  belongs_to :course
  belongs_to :user

  acts_as_attachment :storage => :file_system
#  validates_as_attachment

  def viewable_now?
    viewable_at <= Time.now
  end

end
