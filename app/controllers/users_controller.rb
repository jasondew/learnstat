class UsersController < ApplicationController

  skip_before_filter :require_user, :only => [:new, :create]
  before_filter :require_instructor, :only => [:show, :destroy]

  inherit_resources

  def create
    create! { @user.course }
  end

end
