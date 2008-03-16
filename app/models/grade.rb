class Grade < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :course
  belongs_to :exam

  validates_presence_of :value
  validates_numericality_of :value

  def for
    user and user.name
  end

  #FIXME this doesn't seem to work
  def value=(value)
    value = value.to_f > 1.0 ? value : value / 100.0
    super(value)
  end

end
