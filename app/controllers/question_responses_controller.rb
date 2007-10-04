class QuestionResponsesController < ApplicationController

  # POST /question_responses
  # POST /question_responses.xml
  def create
    @quiz_question = QuizQuestion.find params[:quiz_question_id]

    @question_response = QuestionResponse.new :user_id            => current_user.id,
                                              :course_id          => params[:course_id],
                                              :quiz_id            => params[:quiz_id],
                                              :quiz_question_id   => params[:quiz_question_id],
                                              :question_choice_id => params[:question_choice_id],
                                              :correct            => @quiz_question.correct_answer?( params[:question_choice_id] )

    respond_to do |format|
      if @question_response.save
        format.js
        format.xml  { head :created, :location => quiz_url(@course, @quiz) }
      else
        format.js { render :status => :not_acceptable }
        format.xml  { render :xml => @question_response.errors.to_xml }
      end
    end
  end

end
