class Quiz < ActiveRecord::Base

  belongs_to :course
  has_many :questions, :class_name => 'QuizQuestion'
  has_many :question_responses
  has_many :grades

  validates_presence_of :name, :due_at

  def grade_for(user)
    (grades.find_by_user_id(user) || compute_grade(user)).value
  end

  def validate
    errors.add( :due_at, 'date must be in the future' ) if due_at and due_at <= Time.now
    errors.add( :viewable_at, 'date must be before the due date' ) if viewable_at and viewable_at > self.due_at
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

  def compute_grade(user)
    correct_responses = user.question_responses.find_all_by_quiz_id_and_correct self.id, true
    user.grades.create :quiz_id => self.id, :value => (correct_responses.size / questions.size.to_f)
  end

end
