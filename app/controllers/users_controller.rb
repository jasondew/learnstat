class UsersController < ApplicationController

  skip_before_filter :require_user, :only => [:new, :create]
  before_filter :require_instructor, :only => [:show, :destroy]

  inherit_resources

  def create
    create! { @user.course }
  end

  def update
    update! { @user.course }
  end

  def destroy
    destroy! { @user.course }
  end

end
