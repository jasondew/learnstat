module ApplicationHelper

  def flash_messages
    %w(notice alert).map do |type|
      content = flash[type.to_sym]
      content_tag(:div, content, :id => type) unless content.blank?
    end.compact.join.html_safe
  end

  def link_to_remove_fields form
    form.input :_destroy, :as => :boolean, :label => "delete" unless form.object.new_record?
  end

  def link_to_add_fields name, form, association
    new_object = form.object.class.reflect_on_association(association).klass.new

    fields = form.simple_fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(form.object.class.to_s.tableize + "/" + association.to_s.singularize + "_fields", :form => builder)
    end

    content_tag(:div, :class => "input new_nested_object_link") do
      link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
    end
  end

  # OLD STUFF BELOW

  MENU_ITEMS = [
    ['home',          "course_path(@course)",                         true ],
    ['announcements', "course_announcements_path(@course)",           true ],
    ['documents',     "course_documents_path(@course)",               true ],
    ['quizzes',       "course_quizzes_path(@course)",                 true ],
    ['roster',        "course_roster_path(@course)",                  false],
    ['grades',        "course_gradebook_path(@course)",               true ],
    ['profile',       "edit_course_user_path(@course, current_user)", true ]
  ]

  def render_collection(objects, name, wrapper = nil)
    return content_tag(:p, "There are no #{name.pluralize} at this time.") if objects.empty?
    content = render :partial => name, :collection => objects
    wrapper ? content_tag(wrapper, content) : content
  end

  def navbar
    return unless logged_in?

    returning(Array.new) do |html|
      html << content_tag(:p, welcome_message, :class => 'left')
      html << content_tag(:p, navbar_title, :class => 'middle')
      html << content_tag(:p, user_information, :class => 'right')
      html << content_tag(:br)
    end.join("\n")
  end

  def menubar
    return unless logged_in? and @course

    content_tag(:div, :id => "menubar") do
      returning(Array.new) do |html|
        MENU_ITEMS.each do |(item, url_method, public_item)|
          next unless instructor? or public_item
          html << menu_link(item, eval(url_method), item_selected == item)
        end
      end.join("\n")
    end
  end

  def menu_link(item, url, selected)
#    return link_to(item, url)
    image_filename = "#{item}_#{selected ? 'blue' : 'black'}.png"
    css_class = selected ? 'selected' : ''

    link_to(image_tag(image_filename, :alt => item.capitalize), url, :class => css_class)
  end

  def item_selected
    case controller
      when AnnouncementsController: 'announcements'
      when DocumentsController: 'documents'
      when QuizzesController: 'quizzes'
      when UsersController: 'profile'
      when GradebooksController: 'grades'
      when CoursesController: 'home'
      when RostersController: 'roster'
      else 'home'
    end
  end

  def instructor_link(text, image, *args)
    return unless instructor?
    link_to content_tag(:span, image_tag(image) + text, :class => "instructor_link"), *args
  end

  def small_block(title, content)
    content_tag(:div, :class => 'small_block') do
      returning(Array.new) do |html|
        html << content_tag(:div, title, :class => 'small_block_head')
        html << content_tag(:div, content, :class => 'small_block_body')
      end.join("\n")
    end
  end

  def navbar_title
    @course ? @course.title : ""
  end

  def welcome_message
    logged_in? ? "Welcome, #{current_user.name}." : "&nbsp;"
  end

  def user_information
    logged_in? ? "[#{link_to 'Logout', logout_url }]" : "&nbsp;"
  end

  def form_for_with_labels(record_or_name_or_array, *args, &proc)
    args << args.extract_options!.merge( :builder => LabeledFormBuilder )
    form_for_without_labels(record_or_name_or_array, *args, &proc)
  end

#  alias_method_chain :form_for, :labels

  def fields_for_with_labels(record_or_name_or_array, *args, &proc)
    args << args.extract_options!.merge( :builder => LabeledFormBuilder )
    fields_for_without_labels(record_or_name_or_array, *args, &proc)
  end

#  alias_method_chain :fields_for, :labels

end
