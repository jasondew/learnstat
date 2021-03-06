class QuizResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :quiz

  has_many :quiz_question_responses, :dependent => :destroy

  accepts_nested_attributes_for :quiz_question_responses, :reject_if => lambda {|attributes| attributes[:question_choice_id].blank? }

  validate :timely
  validates_uniqueness_of :quiz_id, :scope => :user_id

  scope :by, lambda {|user| where(:user_id => user.id) }
  scope :closed, lambda { includes(:quiz).where("quizzes.due_at <= ?", Time.now) }

  after_create :calculate_grade!

  private

  def calculate_grade!
    update_attribute :grade, (quiz_question_responses.correct.count / quiz_question_responses.count.to_f)
  end

  def timely
    errors.add_to_base "response is not timely" unless quiz.open?
  end

end
