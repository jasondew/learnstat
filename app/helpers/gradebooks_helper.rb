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

  def minimum_final_grade_for minimum, quiz_average, exam_average
    return unless quiz_average and exam_average
    
    needed = (minimum - 30 * quiz_average - 45 * exam_average) / 25.0

    return 0 if needed <= 0
    return nil if needed > 1
    needed
  end

end
