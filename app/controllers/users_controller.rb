class UsersController < ApplicationController

  skip_before_filter :login_required

  # render new.rhtml
  def new
  end

  def create
    @user = User.new(params[:user])
    @user.save!
    self.current_user = @user
    redirect_to login_url
    flash[:notice] = "Thanks for signing up!  You should receive an activation e-mail shortly."
  rescue ActiveRecord::RecordInvalid
    render :action => 'new'
  end

end
