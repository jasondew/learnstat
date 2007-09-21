# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def quiz_info(quiz_id)
    current_user.attempted_quiz?(quiz_id) ? "Attempted, grade: #{ grade_format( current_user.grade_on_quiz(quiz_id) ) }" : 'Not attemped.'
  end

end
