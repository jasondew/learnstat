# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def datetime_format(datetime)
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def grade_format(grade)
    (((grade * 10000).round) / 100.0).to_s + "%"
  end

end
