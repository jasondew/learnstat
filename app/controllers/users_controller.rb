class UsersController < ApplicationController

  skip_before_filter :require_user, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    @user.save do |result|
      if result
        flash[:notice] = "Account registered!"
        redirect_back_or_default profile_url(@user)
      else
        redirect_to login_url
      end
    end
  end

  def show
    @user = @current_user
    @profile = @user.profile
  end

  def edit
    @user = @current_user
  end

  def update
    return create unless @current_user

    @user = @current_user # makes our views "cleaner" and more consistent
    @user.update_attributes(params[:user]) do |result|
      if result
        flash[:notice] = "Account updated!"
        redirect_to profile_url(@user)
      else
        raise @user.errors.inspect
        render :action => :edit
      end
    end
  end

end
