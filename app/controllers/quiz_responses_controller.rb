class QuizResponsesController < ApplicationController

  inherit_resources
  defaults :collection_name => "responses"
  belongs_to :quiz
  actions :create

  def create
    params[:quiz_response][:user_id] = current_user.id
    QuizResponse.where(:quiz_id => params[:quiz_id], :user_id => current_user.id).all.map(&:destroy)

    create! { course_quizzes_path(@quiz.course) }
  end

end
