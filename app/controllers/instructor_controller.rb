class InstructorController < ApplicationController
	before_filter :login_required
	before_filter :verify_instructor

	def index
		redirect_to :action => "list"
	end

	def list
		@quizzes = Quiz.find(:all, :order => "due desc")
		@announcements = Announcement.find(:all, :order => "created_at desc")
		@documents = Document.find(:all, :order => "id")
	end

	def create
		case request.method
			when :post
        @quiz = Quiz.new(params[:quiz])
        
        if @quiz.save
          flash[:notice] = "Quiz successfully created"
          redirect_to :action => "edit", :id => @quiz.id
        end

      when :get
        @quiz = Quiz.new
    end      
	end

	def edit
		@quiz = Quiz.find(params[:id])
		@quiz_questions = @quiz.quiz_questions
		@chapters = Question.find(:all, :select => "DISTINCT chapter")
		@questions = Question.find(:all, :conditions => ["chapter = ?", @chapters[2].chapter])
	end

	def add
		@quiz_question = QuizQuestion.new

		@quiz_question.quiz_id = params[:id]
		@quiz_question.question_id = params[:question_id]

		if @quiz_question.save
			render :text => "Question #{params[:id]} successfully added to quiz #{params[:id]}"
		else
			render :text => "Question #{params[:id]} unable to be added to quiz #{params[:id]}", :status => 500
		end
	end

	def show
		@quiz = Quiz.find(params[:id])
		@grades = Array.new

		@quiz.grades.each {|x| @grades << x.grade}
	end

end
