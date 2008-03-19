# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

#FIXME need to change the notice people get on account registration
#FIXME need to show students that need to be activated on the roster page
#FIXME add some cache_fu!

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  include ActionView::Helpers::NumberHelper
  include ExceptionNotifiable

  LETTER_GRADES = [:F, :D, :C, :B, :A]

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

  def datetime_format(datetime)
    return 'Not available' unless datetime
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def percent_format(number, nil_text="Not available")
    return nil_text unless number
    number_to_percentage(number * 100, {:precision => 2})
  end

  def instructor?
    current_user && current_user.instructor?
  end

  def letter_grade_for(score)
    score = (score <= 1) ? score * 100 : score

    case score
      when 90..100: :A
      when  80..90: :B
      when  70..80: :C
      when  60..70: :D
      when   0..60: :F
    end
  end

  helper_method :datetime_format, :percent_format, :instructor?

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

  def get_exam
    @exam = Exam.find params[:exam_id]
  end

  private

  def audit_request
    return unless logged_in?
    current_user.audits.create :method => request.method.to_s, :url => request.path, :params => stored_params, :ip => request.remote_ip
  end

  def stored_params
    fixed_params = params.dup
    fixed_params.delete(:document)
    fixed_params.delete(:action)
    fixed_params.delete(:controller)
    fixed_params.to_json
  end

end
