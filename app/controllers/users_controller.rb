class UsersController < ApplicationController

  skip_before_filter :login_required, :only => [:new, :create]
  before_filter :instructor_required, :only => :password_reset
  before_filter :get_course

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    @user.save!
    redirect_to login_url
    flash[:notice] = "Thanks for signing up!  You should receive an activation e-mail soon."
  rescue ActiveRecord::RecordInvalid
    render :action => 'new'
  end

  def reset_password
    @user = @course.students.find params[:id]
    password = "new"
    @user.update_attributes :password => password, :password_confirmation => password

    render :text => "The new password for #{@user.name} (#{@user.login}) is `#{password}`."
  end

  def edit
  end

  def update
    @user = User.authenticate( current_user.login, params[:current_password] )

    if @user
      if @user.update_attributes :password => params[:new_password], :password_confirmation => params[:new_password_confirmation]
        flash[:notice] = 'Your password has been changed.'
        redirect_to course_path(@user.course)
      else
        flash[:error] = 'New password was not confirmed.'
        render :action => 'edit'
      end
    else
      flash[:error] = 'Current password was incorrect.'
      render :action => 'edit'
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
