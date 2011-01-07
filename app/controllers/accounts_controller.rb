class AccountsController < ApplicationController

  before_filter :require_user

  inherit_resources
  defaults :instance_name => "user"
  actions :show, :edit, :update

  def update
    update! { account_path }
  end

  protected

  def resource
    @user ||= current_user
    @course = @user.course
    @user
  end

end
