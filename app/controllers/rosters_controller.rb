class RostersController < ApplicationController

  before_filter :require_instructor
  before_filter :get_course

  def show
    #FIXME needs to send email to the student alerting them of a password change
    @students = @course.students
  end

end
