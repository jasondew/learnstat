class ActivationsController < ApplicationController

  before_filter :require_instructor

  def new
    @user = User.find_by_activation_code params[:activation_code]

    if logged_in? && !@user.activated?
      @user.activate
      flash[:notice] = "User activated"
    end

    redirect_to course_path(@user.course)
  end

end
