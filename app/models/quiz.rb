class Quiz < ActiveRecord::Base
	has_many :quiz_questions
	has_many :grades

	validates_uniqueness_of :name
	validates_presence_of :due

  def open?
    due <= Time.now
  end

  def info
    attempted? ? "Attempted, grade: #{ grade_format( grade ) }" : 'Not attemped.'
  end

  def grade
    current_user.grades.detect {|grade| grade.quiz_id == id }.value
  end

end
