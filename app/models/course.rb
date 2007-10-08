class Course < ActiveRecord::Base

  has_many :users
  has_many :students, :class_name => 'User', :conditions => { :instructor => false }, :order => 'last_name, first_name'
  has_one :instructor, :class_name => 'User', :conditions => { :instructor => true }

  has_many :quizzes
  has_many :open_quizzes, :class_name => 'Quiz', :conditions => [ "due_at >= ?", Time.now ], :order => 'due_at desc'
  has_many :closed_quizzes, :class_name => 'Quiz', :conditions => [ "due_at < ?", Time.now ], :order => 'due_at desc'

  has_many :announcements
  has_many :documents

  include SemesterConstants

  def enrollment
    @enrollment ||= self.students.count
  end

end
