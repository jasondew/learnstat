# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def quiz_info(quiz_id)
    current_user.attempted?(quiz_id) ? "Attempted, grade: #{ grade_format( current_user.grade(quiz_id) ) }" : 'Not attemped.'
  end

end
