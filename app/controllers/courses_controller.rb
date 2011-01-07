class CoursesController < ApplicationController

  before_filter :require_user
  before_filter :redirect_students_to_show, :except => :show

  inherit_resources
  actions :all, :except => :show

  def show
    @course = Course.find params[:id]
    @latest_announcements = @course.announcements.latest
    @latest_documents = @course.documents.latest
    @latest_grades = @course.gradeables.size > 3 ? @course.gradeables[0..2] : @course.gradeables
  end

  def create
    params[:course][:user_id] = current_user.id
    create!
  end

  private

  def redirect_students_to_show
    redirect_to course_path(current_user.course_id) unless instructor?
  end

end
