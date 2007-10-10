class QuizzesController < ApplicationController

  before_filter :get_course
  before_filter :instructor_required, :except => :show

  # GET /quizzes
  # GET /quizzes.xml
  def index
    respond_to do |format|
      format.xml  { render :xml => @course.quizzes.to_xml }
    end
  end

  # GET /quizzes/1
  # GET /quizzes/1.xml
  def show
    @quiz = @course.quizzes.find(params[:id])
    @question_responses = current_user.question_responses.find_all_by_quiz_id @quiz

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @quiz.to_xml }
    end
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1;edit
  def edit
    @quiz = @course.quizzes.find(params[:id])
    @questions = Question.find :all, :include => :choices
  end

  # POST /quizzes
  # POST /quizzes.xml
  def create
    @quiz = @course.quizzes.build params[:quiz]

    respond_to do |format|
      if @quiz.save
        flash[:notice] = 'Quiz was successfully created.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :created, :location => course_path(@course) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quiz.errors.to_xml }
      end
    end
  end

  # PUT /quizzes/1
  # PUT /quizzes/1.xml
  def update
    @quiz = @course.quizzes.find(params[:id])

    respond_to do |format|
      if @quiz.update_attributes(params[:quiz])
        flash[:notice] = 'Quiz was successfully updated.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :ok }
      else
        format.html {
          @questions = Question.find :all, :include => :choices
          render :action => "edit"
        }
        format.xml  { render :xml => @quiz.errors.to_xml }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.xml
  def destroy
    @quiz = @course.quizzes.find(params[:id])
    @quiz.destroy

    respond_to do |format|
      format.html { redirect_to course_path(@course) }
      format.xml  { head :ok }
    end
  end
end
