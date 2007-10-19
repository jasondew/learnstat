module CoursesHelper

  def gradeable_path(gradeable)
    case gradeable
      when Quiz: course_quiz_path(@course, gradeable)
      when Exam: course_exam_path(@course, gradeable)
    end
  end

  def gradeable_report_path(gradeable)
    case gradeable
      when Quiz: course_quiz_grade_distribution_path(@course, gradeable)
      when Exam: course_exam_exam_distribution_path(@course, gradeable)
    end
  end

end
