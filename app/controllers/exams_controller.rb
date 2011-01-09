class ExamsController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course, :optional => true
  actions :all, :except => :index

  def create
    create! { course_gradebook_path(@exam.course) }
  end

  def update
    update! { course_gradebook_path(@exam.course) }
  end

end
