require "latest_method"
require "semester_constants"

class Course < ActiveRecord::Base

  include SemesterConstants

  coded_options :semester => ["Spring", "Spring I", "Spring II", "Maymester", "Summer I", "Summer II", "Fall", "Fall I", "Fall II"]

  LETTER_GRADES = [:F, :D, :C, :B, :A]
  ALL_LETTER_GRADES = [[:F, 0], [:D, 60], [:"D+", 65], [:C, 70], [:"C+", 75], [:B, 80], [:"B+", 85], [:A, 90]]

  belongs_to :instructor, :class_name => "User", :foreign_key => "user_id"

  has_many :users
  has_many :students, :class_name => "User", :conditions => {:instructor => false}, :order => "last_name, first_name"

  has_many :exams, :order => "given_on"
  has_many :quizzes, :order => "due_at DESC"

  has_many :announcements, :extend => LatestMethod, :order => "created_at DESC"
  has_many :documents, :extend => LatestMethod, :order => "created_at DESC"

  validates_presence_of :department, :number, :section, :semester_id, :year, :user_id, :registration_code, :registration_closes_at

  def to_s
    "#{department} #{number}-#{section}, #{semester} #{year}"
  end

  def open?
    registration_closes_at >= Time.now
  end

  def enrollment
    students.count
  end

  def gradeables
    [quizzes.closed, exams].flatten.sort_by do |gradeable|
      gradeable.respond_to?(:due_at) ? gradeable.due_at.to_date : gradeable.given_on
    end
  end

end
