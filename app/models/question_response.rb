class QuestionResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :quiz_question
  belongs_to :question_choice

  validates_presence_of :user_id, :quiz_question_id, :question_choice_id
  validate :timely_response

  before_save :ensure_uniqueness

  delegate :quiz, :to => :quiz_question
  delegate :course, :to => :user

  scope :correct, :conditions => {:correct => true}

  private

  def timely_response
    errors.add :quiz_id, "untimely response" unless quiz.open?
  end

  def ensure_uniqueness
    self.class.delete_all :user_id => self.user_id, :course_id => self.course_id,
                          :quiz_id => self.quiz_id, :quiz_question_id => self.quiz_question_id
  end

end
