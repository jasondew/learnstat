class QuizController < ApplicationController

  def new
    @quiz = Quiz.new params[:quiz]

    return unless request.post?

    if @quiz.save
        flash[:notice] = 'Quiz successfully created'
        redirect_to :controller => :instructor
    else
        flash[:notice] = 'Quiz could not be created'
    end
  end

end
