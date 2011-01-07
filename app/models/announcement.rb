class Announcement < ActiveRecord::Base

  belongs_to :course
  belongs_to :user

  validates_presence_of :title

end
