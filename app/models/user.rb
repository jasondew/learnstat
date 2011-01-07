class User < ActiveRecord::Base

  acts_as_authentic

  belongs_to :course

  has_many :announcements
  has_many :documents
  has_many :grades
  has_many :question_responses
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
    return if question_responses.empty?

    closed_quiz_questions = course.quizzes.closed.map {|quiz| quiz.questions.count }.sum
    return if closed_quiz_questions == 0

    correct_responses.size / closed_quiz_questions.to_f
  end

  def adjusted_mean_score(adjustment)
    return if question_responses.empty?

    ams = (correct_responses.size + adjustment) / course.closed_questions.size.to_f
    ams > 1.0 ? 1.0 : ams
  end

  def correct_responses
    closed_quiz_ids = course.quizzes.closed.map {|quiz| quiz.id }
    question_responses.select {|response| response.correct and closed_quiz_ids.include?(response.quiz_id) }
  end

  def exam_mean_score
    return if grades.empty?
    grades.inject(0.0) {|sum, grade| sum += grade.value unless grade.exam.final; sum } / grades.reject {|grade| grade.exam.final }.length
  end

  def registration_code= code
    return true if course

    self.course = Course.find_by_registration_code code
  end

end
