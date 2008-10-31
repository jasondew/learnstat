class UsersController < ApplicationController

  skip_before_filter :login_required, :only => [:new, :create]
  before_filter :instructor_required, :only => [:destroy, :password_reset]
  before_filter :get_course, :only => [:show, :edit, :destroy]

  def index
    redirect_to current_user_path
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]

    if @user.save
      flash[:notice] = "Thanks for signing up!  You may now login to your account."
      redirect_to login_url
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def reset_password
    password = "Password1"

    @user = @course.students.find params[:id]
    @user.update_attributes :password => password, :password_confirmation => password

    render :text => "The new password for #{@user.name} (#{@user.login}) is `#{password}`."
  end

  def update
    @user = User.authenticate( current_user.login, params[:current_password] )

    if @user
      if @user.update_attributes :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation]
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

  def destroy
    @user = @course.students.find params[:id]
    @user.destroy

    flash[:notice] = 'User has been removed.'
    redirect_to course_roster_path(@course)
  end

  private

  def current_user_path
    user_path(current_user)
  end

end
