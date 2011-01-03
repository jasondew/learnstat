class UserSessionsController < ApplicationController

  skip_before_filter :require_user, :only => [:new, :create]

  def create
    if (@user_session = UserSession.new params[:user_session]).save
      redirect_to root_url, :notice => "Successfully logged in."
    else
      render :action => "new"
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url, :notice => "Successfully logged out."
  end

end
