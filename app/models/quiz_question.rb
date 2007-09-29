class QuizQuestion < ActiveRecord::Base

  belongs_to :quiz
  belongs_to :question

  validates_uniqueness_of :question_id, :scope => :quiz_id

end
