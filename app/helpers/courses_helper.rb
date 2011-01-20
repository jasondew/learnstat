module CoursesHelper

  def format_grades(grades)
    return content_tag(:p, "There are no grades posted at this time.") if grades.empty?

    grades.map do |gradeable|
      content_tag(:div, "#{gradeable.name} &mdash; #{percent_format gradeable.grade_for(current_user), 'Not attempted'}".html_safe)
    end.join.html_safe
  end

  def format_quizzes(quizzes)
    return content_tag(:p, "There are no open quizzes at this time.") if quizzes.empty?

    quiz_links = quizzes.viewable.map do |quiz|
      content_tag(:dt, link_to(quiz.name, quiz)) + content_tag(:dd, "due #{datetime_format(quiz.due_at)}")
    end

    [content_tag(:dl, quiz_links.join("\n").html_safe),
     content_tag(:div, link_to("View all quizzes", course_quizzes_path(@course)), :class => "collection_link")].join.html_safe
  end

  def format_documents(documents)
    return content_tag(:p, "There are no documents at this time.") if documents.empty?

    document_links = documents.map do |document|
      content_tag(:dt, link_to(document.label, course_document_path(@course, document))) +
        content_tag(:dd, "added #{datetime_format(document.created_at)}")
    end

    [content_tag(:dl, document_links.join("\n").html_safe),
     content_tag(:div, link_to('View all documents', course_documents_path(@course)), :class => 'collection_link')].join("\n").html_safe
  end

  def gradeable_report_path(gradeable)
    case gradeable
      when Quiz: course_quiz_grade_distribution_path(@course, gradeable)
      when Exam: course_exam_exam_distribution_path(@course, gradeable)
    end
  end

end
