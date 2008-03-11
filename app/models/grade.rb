class Grade < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :course
  belongs_to :exam

  validates_presence_of :value
  validates_numericality_of :value

  def for
    user and user.name
  end

end
