class CoursesController < ApplicationController

  before_filter :redirect_students_to_show, :except => :show

  # GET /courses
  def index
    @courses = Course.find(:all)
  end

  # GET /courses/1
  def show
    @course = Course.find(params[:id])
    @gradebook = Hash.new {|h,k| h[k] = Array.new }

    @students = current_user.instructor? ? @course.students : [current_user]

    @students.each do |student|
      @course.gradeables.each do |gradeable|
        @gradebook[gradeable.name.underscore][student.id] = gradeable.grade_for(student)
      end
    end
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1;edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  def create
    @course = current_user.courses.build params[:course]

    if @course.save
      flash[:notice] = 'Course was successfully created.'
      redirect_to @course
    else
      render :action => "new"
    end
  end

  # PUT /courses/1
  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(params[:course])
      flash[:notice] = 'Course was successfully updated.'
      redirect_to @course
    else
      render :action => "edit"
    end
  end

  # DELETE /courses/1
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private

  def redirect_students_to_show
    redirect_to course_path(current_user.course_id) unless current_user.instructor?
  end

end
