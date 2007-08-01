class Question < ActiveRecord::Base
	has_many :choices
	has_many :quiz_questions
end
