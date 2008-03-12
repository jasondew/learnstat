class QuizzesController < ApplicationController

  before_filter :require_instructor, :except => :show
  before_filter :get_course, :except => :parse_date

  def index
    @quizzes = @course.quizzes
  end

  def mark_viewable
    @quiz = @course.quizzes.find params[:id]
    @quiz.update_attribute :viewable_at, Time.now

    redirect_to :action => :index
  end

  def show
    @quiz = @course.quizzes.find(params[:id])
    @question_responses = current_user.question_responses.find_all_by_quiz_id @quiz
  end

  def new
    @quiz = Quiz.new
  end

  def edit
    @quiz = @course.quizzes.find(params[:id])
    @questions = Question.find_by_contents("*", {}, :include => :choices)
  end

  def create
    @quiz = @course.quizzes.build params[:quiz]

    if @quiz.save
      flash[:notice] = 'Quiz successfully created.'
      redirect_to course_path(@course)
    else
      flash[:error] = 'Quiz not saved.'
      render :action => "new"
    end
  end

  def update
    @quiz = @course.quizzes.find(params[:id])

    if @quiz.update_attributes(params[:quiz])
      flash[:notice] = 'Quiz successfully updated.'
      redirect_to course_path(@course)
    else
      @questions = Question.find :all, :include => :choices
      render :action => "edit"
    end
  end

  def destroy
    @quiz = @course.quizzes.find(params[:id])
    @quiz.destroy

    flash[:notice] = 'Quiz successfuly deleted.'
    redirect_to course_path(@course)
  end
end
