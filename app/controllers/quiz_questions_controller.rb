class QuizQuestionsController < ApplicationController

  before_filter :get_course
  before_filter :get_quiz

  # POST /quiz_questions
  # POST /quiz_questions.xml
  def create
    @quiz_question = @quiz.questions.build :question_id => params[:question_id]
    @question = @quiz_question.question

    respond_to do |format|
      if @quiz_question.save
        format.html { render :nothing => true, :status => :ok }
        format.js
        format.xml  { head :created }
      else
        format.html { render :nothing => true, :status => :error }
        format.xml  { render :xml => @quiz_question.errors.to_xml }
      end
    end
  end

  # DELETE /quiz_questions/1
  # DELETE /quiz_questions/1.xml
  def destroy
    @quiz_question = @quiz.questions.find(params[:id])
    @question = @quiz_question.question
    @quiz_question.destroy

    respond_to do |format|
      format.html { render :nothing => true, :status => :ok }
      format.js
      format.xml  { head :ok }
    end
  end

end
