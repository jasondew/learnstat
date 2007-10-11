class CoursesController < ApplicationController

  before_filter :redirect_students_to_show, :except => :show

  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @courses.to_xml }
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])
    @gradebook = Hash.new {|h, k| h[k] = Hash.new }

    if current_user.instructor?
      @course.students.each do |student|
        @course.quizzes.each do |quiz|
          @gradebook[student.id][quiz.id] = quiz.grade_for(student)
        end
      end
    end

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @course.to_xml }
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
  # POST /courses.xml
  def create
    @course = current_user.courses.build params[:course]

    respond_to do |format|
      if @course.save
        flash[:notice] = 'Course was successfully created.'
        format.html { redirect_to course_url(@course) }
        format.xml  { head :created, :location => course_url(@course) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course.errors.to_xml }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        flash[:notice] = 'Course was successfully updated.'
        format.html { redirect_to course_url(@course) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course.errors.to_xml }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.xml  { head :ok }
    end
  end

  private

  def redirect_students_to_show
    redirect_to course_path(current_user.course_id) unless current_user.instructor?
  end

end
