class QuizQuestion < ActiveRecord::Base

  belongs_to :quiz
  belongs_to :question

  validates_uniqueness_of :question_id, :scope => :quiz_id

  def method_missing(method, *args)
    self.question.send(method, *args)
  end

end
