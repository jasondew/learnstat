class QuizzesController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course, :optional => true

  def show
    @course = resource.course
    show!
  end

  def create
    create! { @quiz }
  end

  def update
    update! { @quiz }
  end

  def destroy
    destroy! { @quiz.course }
  end

end
