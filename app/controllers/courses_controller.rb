class CoursesController < ApplicationController

  before_filter :redirect_students_to_show, :except => :show

  def index
    @courses = Course.find(:all)
  end

  def show
    @course = Course.find params[:id]
    @latest_announcements = @course.announcements.latest
    @latest_documents = @course.documents.latest
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = current_user.courses.build params[:course]

    if @course.save
      flash[:notice] = 'Course was successfully created.'
      redirect_to @course
    else
      render :action => "new"
    end
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(params[:course])
      flash[:notice] = 'Course was successfully updated.'
      redirect_to @course
    else
      render :action => "edit"
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private

  def redirect_students_to_show
    redirect_to course_path(current_user.course_id) unless instructor?
  end

end
