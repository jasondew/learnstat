module AnnouncementsHelper

  def announcement_title(announcement)
    returning(Array.new) do |html|
      html << announcement.title

      if current_user.instructor?
        html << link_to(image_tag( 'comment_edit.png', :alt => 'Edit Announcement', :title => 'Edit Announcement' ), edit_course_announcement_path(@course, announcement))
        html << link_to(image_tag( 'comment_delete.png', :alt => 'Delete Announcement', :title => 'Delete Announcement' ), course_announcement_path(@course, announcement),
                        :method => :delete, :confirm => 'Are you sure?')
      end
    end.join("\n")
  end

end
