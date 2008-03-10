module DocumentsHelper

  def document_title(document)
    returning(Array.new) do |html|
      html << document.label 
      
      if current_user.instructor?
        html << link_to( image_tag( 'page_edit.png', :alt => 'Edit Document' ), edit_course_document_path(@course, document))
        html << link_to( image_tag( 'page_delete.png', :alt => 'Delete Document' ), course_document_path(@course, document),
                         :confirm => 'Are you sure?', :method => :delete )
        html << content_tag(:br)
        html << content_tag(:span, "(viewable by students on #{datetime_format(document.viewable_at)})", :class => "information") unless document.viewable_now?
      end
    end.join("\n")
  end

  def document_information(document)
    "viewable #{document.viewable_now? ? 'now' : datetime_format(document.viewable_at)}, added #{datetime_format document.created_at}"
  end

end
