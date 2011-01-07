class DocumentsController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course
  actions :all, :except => [:edit, :update]

  def show
    resource
    redirect_to @document.file_url
  end

  def create
    params[:document][:user_id] = current_user.id
    create! { @course }
  end

end
