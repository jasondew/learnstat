class QuizQuestion < ActiveRecord::Base

  belongs_to :quiz
  belongs_to :question

  has_many :responses, :class_name => "QuizQuestionResponse", :foreign_key => "quiz_question_id"

  validates_presence_of :quiz_id, :question_id
  validates_uniqueness_of :question_id, :scope => :quiz_id

end
