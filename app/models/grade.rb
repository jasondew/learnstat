class Grade < ActiveRecord::Base

  belongs_to :user
  belongs_to :exam

  validates_presence_of :value
  validates_numericality_of :value

  def for
    user and user.name
  end

  def value=(value)
    normalized_value = value.to_f > 1.0 ? value.to_f / 100.0 : value.to_f
    super(normalized_value)
  end

end
