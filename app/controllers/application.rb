# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem

  before_filter :login_required

  session :session_key => '_trunk_session_id'

  def instructor_required
    current_user.instructor?
  end

  protected

  def get_course
    @course = Course.find params[:course_id]
  end

  def get_question
    @question = Question.find params[:question_id]
  end

  def get_quiz
    @quiz = Quiz.find params[:quiz_id]
  end

end
