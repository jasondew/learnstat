class StudentController < ApplicationController
	before_filter :login_required

	def index
		@announcements = Announcement.find(:all, :order => "created_at desc", :limit => 3)
		@documents = Document.find(:all, :order => "id")
		@open_quizzes, @closed_quizzes = Quiz.find(:all, :order => 'due desc').partition {|quiz| quiz.open? }
	end

	def show
		@user = User.find(session[:user].id)
		@quiz = Quiz.find(params[:id])
		@quiz_answers = @user.answers.find(:all, :conditions => ["quiz_id = ?", @quiz.id])
	end

	def submit
		user = User.find(session[:user].id)
		quiz = Quiz.find(params[:id])

		if false # Time.now() > quiz.due
			due = quiz.due.strftime("%A, %B %d at %I:%M%p")
			flash[:notice] = "Your answers were not saved, #{quiz.name}\n was due on #{due}."
		else
			quiz_questions = quiz.quiz_questions.find(:all)

			for quiz_question in quiz_questions
				question = quiz_question.question
				if !save_answer(user, quiz.id, question.id, params["answer"][question.id.to_s], question.answer)
					break
				end
			end

			grade(user, quiz)

		end

		redirect_to :action => "list"
	end

	def choose
		quiz = Quiz.find(params[:id])
		quiz_question = quiz.quiz_questions.find(:first, :conditions => ["question_id = ?", params[:question_id]]).question

		if Time.now() > quiz.due
			due = quiz.due.strftime("%A, %B %d at %I:%M%p")
			render :text => "Your answer was not saved, #{quiz.name}\n was due on #{due}.", :status => 500, :layout => false
		else
			user = User.find(session[:user].id)
			answer = user.answers.find(
									:first,
									:conditions => [ "quiz_id = ? AND question_id = ?", quiz.id, params[:question_id] ]
								)
	
			if answer
				answer.choice_id = params[:choice_id]
			else
				answer = Answer.new(params[:answer])
	
				answer.user_id = user.id
				answer.quiz_id = quiz.id
				answer.question_id = params[:question_id]
				answer.choice_id = params[:choice_id]
			end

			if answer.choice_id == quiz_question.answer
				answer.correct = true
			else
				answer.correct = false
			end
	
			if answer.save
				quiz_grade = user.grades.find(:first, :conditions => [ "quiz_id = ?", quiz.id ])

				if !quiz_grade
					quiz_grade = Grade.new
					quiz_grade.user_id = user.id
					quiz_grade.quiz_id = quiz.id
				end

				correct_answers = user.answers.select { |x| (x.quiz_id == quiz.id) && x.correct }
				quiz_grade.grade = correct_answers.size / (quiz.quiz_questions.size + 0.0);

				if quiz_grade.save
					render :text => "Answer successfully saved.", :layout => false
				else
					render :text => "Your answer was not successfully saved,\nplease contact your instructor.", :status => 500, :layout => false
				end
			else
				render :text => "Your answer was not successfully saved,\nplease contact your instructor.", :status => 500, :layout => false
			end
		end
	end

	private

	def save_answer(user, quiz_id, question_id, choice_id, answer_id)
		answer = user.answers.find( :first, :conditions => [ "quiz_id = ? AND question_id = ?", quiz_id, question_id])

		if answer
			answer.choice_id = choice_id
		else
			answer = Answer.new

			answer.user_id = user.id
			answer.quiz_id = quiz_id
			answer.question_id = question_id
			answer.choice_id = choice_id
		end

		if answer.choice_id == answer_id
			answer.correct = true
		else
			answer.correct = false
		end

		if answer.save
			return true
		else
			flash[:notice] = "Your answers were not successfully saved,\nplease contact your instructor. Error code: 1002"
			return false
		end
	end

	def grade(user, quiz)
			quiz_grade = user.grades.find(:first, :conditions => [ "quiz_id = ?", quiz.id ])

			if !quiz_grade
				quiz_grade = Grade.new
				quiz_grade.user_id = user.id
				quiz_grade.quiz_id = quiz_id
			end

			correct_answers = user.answers.select { |x| (x.quiz_id == quiz.id) && x.correct }
			quiz_grade.grade = correct_answers.size / (quiz.quiz_questions.size + 0.0);

			if quiz_grade.save
				flash[:notice] = "Your answers were successfully saved.";
				return true
			else
				flash[:notice] = "Your answers were not successfully saved,\nplease contact your instructor. Error code: 1001"
				return false
			end
	end

end
