class Announcement < ActiveRecord::Base

  include TextualDateTimes

  belongs_to :course
  belongs_to :user
end
