class Quiz < ActiveRecord::Base

  include TextualDateTimes

  belongs_to :course
  has_many :questions, :class_name => 'QuizQuestion'
  has_many :question_responses, :order => 'quiz_question_id'
  has_many :correct_responses, :class_name => 'QuestionResponse', :conditions => { :correct => true }, :order => 'quiz_question_id'

  def self.decode_completion_code(code)
    begin
      Marshal.load code.unpack('m')[0]
    rescue Exception => e
      return nil
    end
  end

  validates_presence_of :name, :due_at
  validate :future_due_date
  validate :viewable_before_due


  def mean
    return if question_responses.empty?
    @mean_score ||= correct_responses.size / question_responses.size.to_f
  end

  def standard_deviation
    return 'Not available' if scores.empty?
    return 0.0 if scores.size == 1

    (scores.collect {|score| (score - mean) ** 2 }.sum / (scores.size - 1.0)) ** 0.5
  end

  def scores
    @scores ||= course.students.collect {|student| grade_for(student) }.compact
  end

  def responses_for(question_id)
    question_responses.find_all_by_quiz_question_id question_id
  end

  def grade_for(user)
    return unless user.question_responses.size > 0 and questions.size > 0
    (user.correct_responses.find_all_by_quiz_id(self).size / questions.size.to_f)
  end

  def percentile_for(user)
    return unless grade_for(user) and scores.size > 0
    (scores.sort.index(grade_for(user)) + 1 ) / scores.size.to_f
  end

  def attempted_by?(user)
    question_responses.collect {|response| response.user_id }.include? user.id
  end

  def completion_code_for(user)
    [ Marshal.dump( [user.to_param, self.to_param, responses_from(user) ] ) ].pack( 'm' )
  end

  def participation
    return 0 unless course.enrollment > 0
    number_attempted / course.enrollment.to_f
  end

  def number_attempted
    question_responses.collect {|response| response.user_id }.uniq.size
  end

  def open?
    due_at >= Time.now and viewable_at >= Time.now
  end

  def closed?
    due_at < Time.now
  end

  def viewable_now?
    viewable_at <= Time.now
  end

  def responses_from(user)
    answers_from(user).collect {|response| response.question_choice_id }
  end

  def answers_from(user)
    question_responses.find_all_by_user_id(user)
  end

  private

  def future_due_date
    errors.add( :due_at, 'date must be in the future' ) if due_at <= Time.now
  end

  def viewable_before_due
    errors.add( :viewable_at, 'date must be before the due date' ) if viewable_at and viewable_at > self.due_at
  end

end
