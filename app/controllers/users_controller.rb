class UsersController < ApplicationController

  skip_before_filter :login_required, :except => :new

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    @user.save!
    redirect_to login_url
    flash[:notice] = "Thanks for signing up!  You should receive an activation e-mail within 24 hours."
  rescue ActiveRecord::RecordInvalid
    render :action => 'new'
  end

  def update
    @user = User.authenticate( current_user.login, params[:current_password] )

    if @user
      if @user.update_attributes :password => params[:new_password], :password_confirmation => params[:new_password_confirmation]
        @notice = 'Password changed'
      else
        @notice = 'Unable to change password'
      end
    else
      @notice = 'Unable to authenticate'
    end
  end

  def index
    redirect_to current_user_path
  end

  def show
  end

  private

  def current_user_path
    user_path(current_user)
  end

end
