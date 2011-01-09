class Quiz < ActiveRecord::Base

  extend ActiveSupport::Memoizable

  belongs_to :course

  has_many :quiz_questions
  has_many :questions, :through => :quiz_questions
  has_many :responses, :class_name => "QuizResponse"

  validates_presence_of :name, :due_at, :viewable_at

  validate :viewable_before_due

  scope :viewable, lambda { where("viewable_at <= ?", Time.now) }
  scope :open, lambda { where("due_at >= ?", Time.now) }
  scope :closed, lambda { where("due_at < ?", Time.now) }

  module ClassMethods
    def decode_completion_code(code)
      begin
        Marshal.load code.unpack('m')[0]
      rescue Exception => e
        return nil
      end
    end
  end
  extend ClassMethods

  def to_s
    name
  end

  def mean
    return if responses.empty?
    correct_quiz_question_responses.size / quiz_question_responses.size.to_f
  end

  def standard_deviation
    return 'Not available' unless mean and !scores.empty?
    return 0.0 if scores.size == 1

    (scores.collect {|score| (score - mean) ** 2 }.sum / (scores.size - 1.0)) ** 0.5
  end

  def quiz_question_responses
    responses.map(&:quiz_question_responses).flatten
  end
  memoize :quiz_question_responses

  def correct_quiz_question_responses
    quiz_question_responses.select(&:correct)
  end

  def scores
    responses.map(&:grade)
  end
  memoize :scores

  def grade_for user
    response_by(user).andand.grade or 0.0
  end

  def percentile_for(user)
    return unless grade_for(user) and scores.size > 0
    (scores.sort.index(grade_for(user)) + 1 ) / scores.size.to_f
  end

  def attempted_by? user
    !! responses.by(user).first
  end

  def completion_code_for(user)
    [ Marshal.dump( [user.to_param, self.to_param, responses_from(user) ] ) ].pack( 'm' )
  end

  def participation
    return 0 unless course.enrollment > 0
    number_attempted / course.enrollment.to_f
  end

  def number_attempted
    responses.count
  end

  def open?
    due_at >= Time.now and viewable?
  end

  def closed?
    due_at < Time.now
  end

  def viewable?
    viewable_at <= Time.now
  end

  def responses_from user
    answers_from(user).map(&:question_choice_id)
  end

  def answers_from user
    response_by(user).quiz_question_responses
  end

  def response_by user
    responses.by(user).first
  end

  private

  def viewable_before_due
    errors.add :viewable_at, "date must be before the due date" if viewable_at and viewable_at > due_at
  end

end
