class Document < ActiveRecord::Base

  belongs_to :course
  belongs_to :user

  acts_as_attachment :storage => :file_system
  validates_as_attachment

end
