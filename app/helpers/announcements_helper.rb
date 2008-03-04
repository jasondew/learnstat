module AnnouncementsHelper

  def instructor_links(announcement)
    returning(Array.new) do |html|
      html << link_to(image_tag( 'comment_edit.png', :alt => 'Edit Announcement' ), edit_course_announcement_path(@course, announcement))
      html << link_to(image_tag( 'comment_delete.png', :alt => 'Delete Announcement' ), course_announcement_path(@course, announcement),
                       :method => :delete, :confirm => 'Are you sure?')
    end.join("\n")
  end

end
