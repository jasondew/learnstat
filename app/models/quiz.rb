class Quiz < ActiveRecord::Base
	has_many :quiz_questions
	has_many :grades

	validates_uniqueness_of :name
	validates_presence_of :due

  def open?
    return false unless due
    due >= Time.now
  end

  def participation
    students = User.find :all, :conditions => { :instructor => false }

    return 1.0 if students.empty?
    grades.size / students.size.to_f
  end

end
