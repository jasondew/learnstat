module GradebooksHelper

  def shorten name
    name.gsub /Homework/, 'HW'
  end

  def render_gradebook
    if @course.gradeables.empty? and (not instructor?)
      "There are no grades posted at this time."
    else
      render :partial => 'gradebook'
    end
  end

end
