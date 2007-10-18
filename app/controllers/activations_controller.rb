class ActivationsController < ApplicationController

  before_filter :require_instructor

  def new
    self.current_user = User.find_by_activation_code(params[:activation_code])

    if logged_in? && !current_user.activated?
      current_user.activate
      flash[:notice] = "Signup complete!"
    end

    redirect_to course_path(current_user.course)
  end

end
