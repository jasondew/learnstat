# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def datetime_format(datetime)
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def percent_format(number)
    return '**' unless number
    number_to_percentage(number * 100, {:precision => 2})
  end

end
