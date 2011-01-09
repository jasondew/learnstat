class QuizQuestionResponse < ActiveRecord::Base

  belongs_to :quiz_response
  belongs_to :quiz_question
  belongs_to :question_choice

  validates_presence_of :quiz_question_id, :question_choice_id
  validates_uniqueness_of :quiz_question_id, :scope => :quiz_response_id

  before_save :score!

  scope :correct, :conditions => {:correct => true}

  delegate :question, :to => :quiz_question

  private

  def score!
    self.correct = (question_choice_id == question.answer)
    true
  end

end
