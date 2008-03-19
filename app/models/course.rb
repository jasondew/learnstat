class Course < ActiveRecord::Base

  has_many :users
  has_many :students, :class_name => 'User', :conditions => { :instructor => false }, :order => 'last_name, first_name'
  has_one :instructor, :class_name => 'User', :conditions => { :instructor => true }

  has_many :quizzes, :order => 'due_at'
  has_many :exams, :order => 'given_on'
  has_many :open_quizzes, :class_name => 'Quiz', :conditions => [ "due_at >= ?", Time.now ], :order => 'due_at desc'
  has_many :closed_quizzes, :class_name => 'Quiz', :conditions => [ "due_at < ?", Time.now ], :order => 'due_at desc'

  has_many :announcements, :extend => LatestMethod, :order => 'created_at desc'
  has_many :documents, :extend => LatestMethod, :order => 'created_at desc'

  include SemesterConstants

  def open?
    registration_closed_at >= Time.now
  end

  def gradeables
    @gradeables ||= [closed_quizzes, exams].flatten.sort_by {|gradeable| gradeable.respond_to?(:due_at) ? gradeable.due_at : gradeable.given_on }
  end

  def enrollment
    @enrollment ||= students.count
  end

end
