module CoursesHelper

  def html_announcements(announcements)
    return content_tag(:p, "There are no announcements at this time.") if announcements.empty?
    format(announcements)
  end

  def format(object)
    case object
      when Array: object.collect {|x| format(x) }.join("\n")
      when Announcement: format_announcement(object)
    end
  end

  def format_announcement(announcement)
    render :partial => 'announcements/announcement', :locals => { :announcement => announcement }
  end

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
