class RostersController < ApplicationController

  before_filter :require_instructor
  before_filter :get_course

  def show
    #FIXME needs to send email to the student alerting them of a password change
    @students = @course.students
  end

  def impersonate
    user = User.find params[:id]

    if user
      self.current_user = user
      flash[:notice] = "Now impersonating #{current_user.login}"
      redirect_to @course
    else
      flash[:notice] = "Unable to find that user."
      redirect_to :action => 'show'
    end
  end

end
