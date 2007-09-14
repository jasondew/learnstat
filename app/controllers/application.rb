# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  session :session_key => '_learnstat_session_id'

  include AuthenticatedSystem

  def verify_instructor
    current_user.instructor?
  end

  def datetime_format(datetime)
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def grade_format(grade)
    (((grade * 10000).round) / 100.0).to_s + "%"
  end

  helper_method :datetime_format, :grade_format

end
