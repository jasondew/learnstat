class RostersController < ApplicationController

  before_filter :require_instructor
  before_filter :get_course

  def show
    @students = @course.students
  end

end
