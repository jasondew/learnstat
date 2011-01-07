class AnnouncementsController < ApplicationController

  before_filter :require_instructor, :except => [:index, :show]

  inherit_resources
  belongs_to :course

  def create
    params[:announcement][:user_id] = current_user.id
    create! { @course }
  end

  def update
    update! { @course }
  end

end
