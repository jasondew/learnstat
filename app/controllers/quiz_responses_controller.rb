class QuizResponsesController < ApplicationController

  inherit_resources
  defaults :collection_name => "responses"
  belongs_to :quiz
  actions :all, :except => [:index, :destroy]

  def create
    params[:quiz_response][:user_id] = current_user.id

    create! { course_quizzes_path(@quiz.course) }
  end

  protected

  def resource
    @quiz_response ||= @quiz.responses.where(:user_id => current_user.id).first
  end

end
