# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  MENU_ITEMS = %w(home announcements documents quizzes grades profile)

  def navbar
    returning(Array.new) do |html|
      html << content_tag(:p, welcome_message, :class => 'left')
      html << content_tag(:p, flash[:notice], :id => 'notices')
      html << content_tag(:p, user_information, :class => 'right')
      html << content_tag(:br)
    end.join("\n")
  end

  def menubar
    #FIXME doesn't show on /user/x/profile
    return unless logged_in? and (@course)

    menu_item_urls = {'home'          => course_path(@course),
                      'announcements' => course_announcements_path(@course),
                      'documents'     => course_documents_path(@course),
                      'quizzes'       => course_quizzes_path(@course),
                      'grades'        => course_gradebook_path(@course),
                      'profile'       => user_profile_path(current_user) }

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
      when UsersController: 'profile'
      when GradebooksController: 'gradebook'
      when CoursesController: 'home'
      else 'home'
    end
  end

  def small_block(title, content)
    content_tag(:div, :class => 'small_block') do
      returning(Array.new) do |html|
        html << content_tag(:div, title, :class => 'small_block_head')
        html << content_tag(:div, content, :class => 'small_block_body')
      end.join("\n")
    end
  end

  def welcome_message
    logged_in? ? "Welcome, #{current_user.name}." : "&nbsp;"
  end

  def user_information
    logged_in? ? "[#{link_to 'Logout', logout_url }]" : "&nbsp;"
  end

  def datetime_format(datetime)
    datetime.strftime("%A, %B %d at %I:%M%p")
  end

  def percent_format(number)
    return '**' unless number
    number_to_percentage(number * 100, {:precision => 2})
  end

end
