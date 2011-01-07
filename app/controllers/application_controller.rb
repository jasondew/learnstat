class ApplicationController < ActionController::Base
  include ActionView::Helpers::NumberHelper

  protect_from_forgery

  helper_method :current_user_session, :current_user, :logged_in?

  before_filter :audit_request
  before_filter :require_user

  def require_instructor
    current_user.instructor?
  end

  def datetime_format(datetime)
    return 'N/A' unless datetime
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def percent_format(number, nil_text="N/A")
    return nil_text unless number
    number_to_percentage(number * 100, {:precision => 1})
  end

  def instructor?
    current_user && current_user.instructor?
  end

  alias :instructor_required :"instructor?"

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

  # new stuff

  def logged_in?
    !! current_user_session
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_user
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_user_session_url
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      redirect_to profile_url(current_user)
      return false
    end
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
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
