class QuizQuestion < ActiveRecord::Base
	belongs_to :quiz
	belongs_to :question

	validates_presence_of :quiz_id
	validates_presence_of :question_id
	validates_uniqueness_of :question_id, :scope => :quiz_id
end
