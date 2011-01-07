class Exam < ActiveRecord::Base

  belongs_to :course

  has_many :grades

  accepts_nested_attributes_for :grades

  def grade_for user
    if (grade = grades.find_by_user_id(user.id))
      grade.value
    else
      '**'
    end
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
