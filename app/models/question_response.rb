class QuestionResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :course
  belongs_to :quiz

  validates_presence_of :user_id, :course_id, :quiz_id, :quiz_question_id, :question_choice_id

  before_save :ensure_uniqueness

  def validate
    self.errors.add('untimely response') unless timely_response?
  end

  private
  
  def timely_response?
    self.quiz.open?
  end

  def ensure_uniqueness
    self.class.delete_all :user_id => self.user_id, :course_id => self.course_id,
                          :quiz_id => self.quiz_id, :quiz_question_id => self.quiz_question_id
  end

end
