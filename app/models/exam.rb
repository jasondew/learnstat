class Exam < ActiveRecord::Base

  belongs_to :course

  has_many :grades do
    def for user
      detect {|grade| grade.user == user }
    end
  end

  accepts_nested_attributes_for :grades

  def grade_for user
    grades.find_by_user_id(user.to_param).try(:value)
  end

  def mean
    return nil unless grades.size > 0
    @mean ||= grades.sum(:value) / grades.size.to_f
  end

  def standard_deviation
    return nil unless grades.size > 1
    (grades.map {|grade| (grade.value - mean) ** 2 }.sum / (grades.size - 1)) ** 0.5
  end

end
