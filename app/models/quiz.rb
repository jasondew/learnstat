class Quiz < ActiveRecord::Base

  belongs_to :course
  has_many :questions, :class_name => 'QuizQuestion'
  has_many :question_responses, :order => 'quiz_question_id'
  has_many :grades

  def self.decode_completion_code(code)
    begin
      Marshal.load code.unpack('m')[0]
    rescue Exception => e
      return nil
    end
  end

  validates_presence_of :name, :due_at

  def validate
    errors.add( :due_at, 'date must be in the future' ) if due_at and due_at <= Time.now
    errors.add( :viewable_at, 'date must be before the due date' ) if viewable_at and viewable_at > self.due_at
  end

  def mean_score
    @mean_score ||= question_responses.find_all_by_correct( true ).size / question_responses.size.to_f
  end

  def score_standard_deviation
    return 0 unless scores.size > 1
    (scores.collect {|score| (score - mean_score) ** 2 }.sum / (scores.size - 1)) ** 0.5
  end

  def scores
    @scores ||= course.students.collect {|student| grade_for(student) }
  end

  def grade_for(user)
    (grades.find_by_user_id(user) || compute_grade(user)).value
  end

  def attempted_by?(user)
    question_responses.collect {|response| response.user_id }.include? user.id
  end

  def completion_code_for(user)
    [ Marshal.dump( [user.to_param, self.to_param, responses_from(user) * 3 ] ) ].pack( 'm' )
  end

  def answers_from(user)
    question_responses.find_all_by_user_id(user)
  end

  def participation
    number_attempted / course.enrollment
  end

  def number_attempted
    question_responses.collect {|response| response.user_id }.uniq.size
  end

  def open?
    due_at >= Time.now
  end

  def closed?
    due_at < Time.now
  end

  def viewable_now?
    viewable_at <= Time.now
  end

  private

  def responses_from(user)
    answers_from(user).collect {|response| response.question_choice_id }
  end

  def compute_grade(user)
    correct_responses = user.question_responses.find_all_by_quiz_id_and_correct self.id, true
    user.grades.create :quiz_id => self.id, :value => (correct_responses.size / questions.size.to_f)
  end

end
