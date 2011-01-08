class QuizResponse < ActiveRecord::Base

  belongs_to :user
  belongs_to :quiz

  has_many :quiz_question_responses

  accepts_nested_attributes_for :quiz_question_responses

end
