class QuestionResponsesController < ApplicationController

  inherit_resources
  actions :create

  belongs_to :quiz_question

  def create
    params[:question_response][:user_id] = current_user.id
    create! { @quiz_question.quiz }
  end

end
