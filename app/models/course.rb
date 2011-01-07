require "latest_method"
require "semester_constants"

class Course < ActiveRecord::Base

  LETTER_GRADES = [:F, :D, :C, :B, :A]
  ALL_LETTER_GRADES = [[:F, 0], [:D, 60], [:"D+", 65], [:C, 70], [:"C+", 75], [:B, 80], [:"B+", 85], [:A, 90]]

  has_many :users
  has_many :students, :class_name => "User", :conditions => { :instructor => false }, :order => "last_name, first_name"
  has_one :instructor, :class_name => "User", :conditions => { :instructor => true }

  has_many :quizzes, :order => "due_at desc"
  has_many :exams, :order => "given_on"

  has_many :announcements, :extend => LatestMethod, :order => "created_at desc"
  has_many :documents, :extend => LatestMethod, :order => "created_at desc"

  include SemesterConstants

  def open_quizzes
    quizzes.select {|quiz| quiz.due_at >= Time.now }
  end

  def closed_quizzes
    quizzes.select {|quiz| quiz.due_at < Time.now }
  end

  def open?
    registration_closed_at >= Time.now
  end

  def gradeables
    @gradeables ||= [closed_quizzes, exams].flatten.sort_by {|gradeable| gradeable.respond_to?(:due_at) ? gradeable.due_at : gradeable.given_on }
  end

  def enrollment
    @enrollment ||= students.count
  end

  def closed_questions
    closed_quizzes.map {|quiz| quiz.questions }.flatten
  end

end
