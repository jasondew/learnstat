class User < ActiveRecord::Base

  extend ActiveSupport::Memoizable

  acts_as_authentic

  belongs_to :course

  has_many :grades
  has_many :quiz_responses
  has_many :audits

  validates_presence_of :first_name, :last_name, :blackboard_username, :email, :password, :password_confirmation
  validates_uniqueness_of :email, :case_sensitive => false
  validates_uniqueness_of :blackboard_username, :case_sensitive => false

  before_validation {|user| user.errors.add :registration_code, "is invalid" unless user.course }

  def to_s
    email
  end

  def name
    first_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def mean_score
    return if quiz_responses.empty?

    closed_quiz_questions = course.quizzes.closed.map {|quiz| quiz.questions.count }.sum
    return if closed_quiz_questions == 0

    correct_responses.size / closed_quiz_questions.to_f
  end

  def adjusted_mean_score(adjustment)
    return if quiz_responses.empty?

    ams = (correct_question_responses.size + adjustment) / correct_question_responses.size.to_f
    ams > 1.0 ? 1.0 : ams
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
    grades.inject(0.0) {|sum, grade| sum += grade.value unless grade.exam.final; sum } / grades.reject {|grade| grade.exam.final }.length
  end

  def registration_code= code
    return true if course

    self.course = Course.find_by_registration_code code
  end

end
