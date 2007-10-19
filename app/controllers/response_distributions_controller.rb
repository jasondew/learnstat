class ResponseDistributionsController < ApplicationController

  before_filter :require_instructor

  before_filter :get_course
  before_filter :get_quiz

  def show
    quiz_question_id, size = params[:id].split '_'

    question = @quiz.questions.find quiz_question_id
    responses = @quiz.responses_for quiz_question_id

    distribution = []

    question.choices.each_with_index do |choice, index|
      bar = Hash.new

      bar[:color] = question.answer == choice.id ? '#459b2f' : '#333'
      bar[:frequency] = responses.select {|r| r.question_choice_id == choice.id }.size / responses.size.to_f

      distribution << bar
    end

    image = BarGraphBuilder.new(distribution, 'Response Distribution', size || '800x600')
    send_data( image.render, :type => 'image/png', :disposition => 'inline' )
  end

end
