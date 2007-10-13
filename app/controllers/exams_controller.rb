class ExamsController < ApplicationController

  before_filter :require_instructor, :except => :show
  before_filter :get_course

  # GET /exams
  def index
    @exams = @course.exams
  end

  # GET /exams/1
  def show
    @exam = @course.exams.find params[:id]
  end

  # GET /exams/new
  def new
    @exam = @course.exams.build

    @course.students.each do |student|
      @exam.grades.build :user_id => student.id, :course_id => @course.id
    end
  end

  # GET /exams/1/edit
  def edit
    @exam = @course.exams.find params[:id]
  end

  # POST /exams
  def create
    @exam = @course.exams.build params[:exam]

    if @exam.save
      flash[:notice] = 'Exam successfully saved'
      redirect_to course_path(@course)
    else
      render :action => 'new'
    end
  end

  # PUT /exams/1
  def update
    @exam = @course.exams.find params[:id]

    if @exam.update_attributes params[:exam]
      flash[:notice] = 'Exam successfully saved'
      redirect_to course_path(@course)
    else
      render :action => 'edit'
    end
  end

  # DELETE /exams/1
  def destroy
    @exam = @course.exams.find params[:id]
    @exam.destroy

    redirect_to @course
  end
end
