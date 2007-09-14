class AccountController < ApplicationController

  def login
    return unless request.post?

    self.current_user = User.authenticate(params[:login], params[:password])
    flash[:notice] = logged_in? ? 'Logged in successfully.' : 'Unable to log you in, please check your username and password.'

    redirect
  end

  def signup
    @user = User.new(params[:user])
    return unless request.post?

    @user.save!
    self.current_user = @user

    redirect
    flash[:notice] = "Thanks for signing up!"

    rescue ActiveRecord::RecordInvalid
      render :action => :signup
  end
  
  def logout
    reset_session
    redirect
    flash[:notice] = "You have been logged out."
  end

  private

  def redirect
    if logged_in?
      redirect_to :controller => (current_user.instructor? ? :instructor : :student)
    else
      redirect_to :action => :login
    end
  end
end
