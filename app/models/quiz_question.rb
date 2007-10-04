class QuizQuestion < ActiveRecord::Base

  DELEGATED_METHODS = [ :content, :answer, :chapter, :correct_answer?, :choices ]

  belongs_to :quiz
  belongs_to :question

  validates_uniqueness_of :question_id, :scope => :quiz_id

  def method_missing(method, *args)
    if self.question and DELEGATED_METHODS.include? method
      self.question.send(method, *args)
    else
      super(method, *args)
    end
  end

end
