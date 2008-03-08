# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  MENU_ITEMS = %w(home announcements documents quizzes grades profile)

  def render_collection(objects, name, wrapper = nil)
    return content_tag(:p, "There are no #{name.pluralize} at this time.") if objects.empty?
    content = render :partial => name, :collection => objects
    wrapper ? content_tag(wrapper, content) : content
  end

  def navbar
    returning(Array.new) do |html|
      html << content_tag(:p, welcome_message, :class => 'left')
      html << content_tag(:p, navbar_title, :class => 'middle')
      html << content_tag(:p, user_information, :class => 'right')
      html << content_tag(:br)
    end.join("\n")
  end

  def messages
    return if flash.empty?

    flashes = flash.collect {|(key, value)| content_tag(:div, value, :class => key) }
    content_tag(:div, flashes.join("\n"), :id => "messages")
  end

  def menubar
    return unless logged_in? and (@course or controller.is_a? ::ProfilesController)

    menu_item_urls = {'home'          => course_path(@course),
                      'announcements' => course_announcements_path(@course),
                      'documents'     => course_documents_path(@course),
                      'quizzes'       => course_quizzes_path(@course),
                      'grades'        => course_gradebook_path(@course),
                      'profile'       => course_user_profile_path(@course, current_user) }

    returning(Array.new) do |html|
      MENU_ITEMS.each do |item|
        html << menu_link(item, menu_item_urls[item], item_selected == item)
      end

      html << content_tag(:br)
    end.join("\n")
  end

  def menu_link(item, url, selected)
    image_filename = "#{item}_#{selected ? 'blue' : 'black'}.png"
    css_class = selected ? 'selected' : ''

    link_to(image_tag(image_filename, :alt => item.capitalize), url, :class => css_class)
  end

  def item_selected
    case controller
      when AnnouncementsController: 'announcements'
      when DocumentsController: 'documents'
      when QuizzesController: 'quizzes'
      when ProfilesController: 'profile'
      when GradebooksController: 'grades'
      when CoursesController: 'home'
      else 'home'
    end
  end

  def instructor_link(text, image, *args)
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

end
