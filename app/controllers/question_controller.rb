class QuestionController < ApplicationController

  def list
    @questions = Question.find :all
  end

  def edit
    @question = Question.find params[:id]
    return unless request.post?
    @question.update_attributes params[:question]
    redirect_to :action => :list
  end

end
