class Document < ActiveRecord::Base

  belongs_to :course
  belongs_to :user

  has_attachment :storage => :file_system
#  validates_as_attachment

  def viewable_now?
    viewable_at <= Time.now
  end

end
