module CoursesHelper

  def html_announcements(announcements)
    return content_tag(:p, "There are no announcements at this time.") if announcements.empty?
    content_tag(:ul, format(announcements))
  end

  def format(object)
    case object
      when Array: object.collect {|x| format(x) }.join("\n")
      when Announcement: format_announcement(object)
    end
  end

  def format_announcement(announcement)
    content_tag(:li, announcement.title)
    
=begin
      <div class="block_head">
        <h3>
          <%= announcement.title %>
        <% if current_user.instructor? %>
          <%= link_to image_tag( 'comment_edit.png', :alt => 'Edit Announcement' ), edit_course_announcement_path(@course, announcement) %>
          <%= link_to image_tag( 'comment_delete.png', :alt => 'Delete Announcement' ), course_announcement_path(@course, announcement),
                      :method => :delete, :confirm => 'Are you sure?' %>
        <% end %>
        </h3>
        <div class="block_information">Posted by <%= announcement.user.full_name %> on <%= datetime_format(announcement.created_at) %> </div>
        <br />
      </div>

      <div class="block_body">
        <%= announcement.body %>
      </div>
=end

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
