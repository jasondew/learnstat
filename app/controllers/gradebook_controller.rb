class GradebookController < ApplicationController
  before_filter :login_required
	before_filter :verify_instructor

	def list
		@gradebook = Hash.new { |h,k| h[k]= Hash.new }

		@users = User.find(:all, :conditions => ["instructor = ?", 0])
		@quizzes = Quiz.find(:all, :order => "due")

		for grade in Grade.find(:all) do
			@gradebook[grade.user_id][grade.quiz_id] = grade_format(grade.grade)
		end
	end

end
