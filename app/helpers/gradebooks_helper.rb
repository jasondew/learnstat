module GradebooksHelper

  def render_gradebook
    if @course.gradeables.empty? and (! instructor?)
      "There are no grades posted at this time."
    else
      render :partial => 'gradebook'
    end
  end

end
