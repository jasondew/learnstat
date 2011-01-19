class QuizzesController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course, :optional => true

  def show
    @course = resource.course
    @quiz_response = QuizResponse.where(:quiz_id => @quiz.id, :user_id => current_user.id).first

    show!
  end

  def create
    create! { @quiz }
  end

  def edit
    @course = resource.course
    edit!
  end

  def update
    update! { @quiz }
  end

  def destroy
    destroy! { @quiz.course }
  end

end
