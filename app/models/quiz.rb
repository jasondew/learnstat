class Quiz < ActiveRecord::Base
	has_many :quiz_questions
	has_many :grades

	validates_uniqueness_of :name
	validates_presence_of :due
end
