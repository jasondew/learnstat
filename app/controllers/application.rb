# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem

  before_filter :audit_request
  before_filter :login_required

  session :session_key => '_learnstat_session_id'

  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '978aea9145ec181f5fb34aa5b844a4c8'

  def require_instructor
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

  private

  def audit_request
    return unless logged_in?
    current_user.audits.create :url => request.path, :params => prepare_for_database(params), :ip => request.remote_ip
  end

  def prepare_for_database(params)
    prepared_params = params.dup

    if document_params = prepared_params.delete(:document)
      document_params.delete(:uploaded_data)
    end
  end

end
