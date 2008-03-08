module CoursesHelper

  def format_announcements(announcements)
    return content_tag(:p, "There are no announcements at this time.") if announcements.empty?

    returning(Array.new) do |html|
      html << announcements.collect {|announcement| render :partial => "announcements/announcement", :locals => { :announcement => announcement } }.join("\n")
      html << content_tag(:div, link_to('View all announcements', course_announcements_path(@course)), :class => 'collection_link')
    end.join("\n")
  end

  def format_documents(documents)
    return content_tag(:p, "There are no documents at this time.") if documents.empty?

    document_links = documents.collect do |document|
      content_tag(:dt, link_to(document.label, course_document_path(@course, document))) +
        content_tag(:dd, "added #{datetime_format(document.created_at)}")
    end

    returning(Array.new) do |html|
      html << content_tag(:dl, document_links.join("\n"))
      html << content_tag(:div, link_to('View all documents', course_documents_path(@course)), :class => 'collection_link')
    end.join("\n")
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
