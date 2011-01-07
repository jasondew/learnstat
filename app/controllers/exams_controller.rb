class ExamsController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course
  actions :all, :except => :index

  def create
    create! { course_gradebook_path(@course) }
  end

  def update
    update! { course_gradebook_path(@course) }
  end

end
