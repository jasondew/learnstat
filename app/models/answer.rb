class Answer < ActiveRecord::Base
	belongs_to :user
	belongs_to :quiz_question

	validates_presence_of :user_id
	validates_presence_of :quiz_id
	validates_presence_of :question_id
	validates_presence_of :choice_id

	validates_uniqueness_of :question_id, :scope => [:user_id, :quiz_id]
end
