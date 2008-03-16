class Exam < ActiveRecord::Base

  include TextualDateTimes

  belongs_to :course
  has_many :grades

  def grade_for(user)
    if grade = grades.find_by_user_id( user.id )
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
    (grades.collect {|grade| (grade.value - mean) ** 2 }.sum / (grades.size - 1)) ** 0.5
  end

  def grade_attributes=(attributes)
    attributes.each do |grade_attributes|
      case grade_attributes
        when Hash:
          grades.build grade_attributes
        when Array:
          grade_id, grade_attributes = grade_attributes
          grades.find(grade_id).update_attributes grade_attributes
      end
    end
  end

end
