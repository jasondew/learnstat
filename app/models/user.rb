class User < ActiveRecord::Base

  extend ActiveSupport::Memoizable

  acts_as_authentic

  belongs_to :course

  has_many :grades
  has_many :quiz_responses
  has_many :audits

  validates_presence_of :first_name, :last_name, :email, :password, :password_confirmation
  validates_uniqueness_of :email, :case_sensitive => false

  before_validation {|user| user.errors.add :registration_code, "is invalid" unless user.course }

  def to_s
    name
  end

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def mean_score adjustment=20.0
    return if closed_question_responses.empty?

    adjusted_mean = (correct_question_responses.size + adjustment) / Quiz.closed.map {|quiz| quiz.questions.count }.sum.to_f
    adjusted_mean > 1.0 ? 1.0 : adjusted_mean
  end

  def closed_question_responses
    quiz_responses.closed.map(&:quiz_question_responses).flatten
  end
  memoize :closed_question_responses

  def correct_question_responses
    closed_question_responses.select(&:correct)
  end
  memoize :correct_question_responses

  def exam_mean_score
    return if grades.empty?
    exam_grades = grades.reject {|grade| grade.exam.final? }.map(&:value)
    exam_grades.sum / exam_grades.length.to_f
  end

  def final_grade
    return unless (final_exam_grade = grades.detect {|grade| grade.exam.final? })
    0.35 * mean_score + 0.45 * exam_mean_score + 0.15 * final_exam_grade.value + 0.05
  end

  def registration_code= code
    return true if course

    self.course = Course.find_by_registration_code code
  end

end
