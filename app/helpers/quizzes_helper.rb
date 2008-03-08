module QuizzesHelper

  def instructor_quiz_links(quiz)
    return unless instructor?

    returning(Array.new) do |html|
      html << link_to( image_tag( 'application_form_edit.png', :alt => 'Edit Quiz' ), edit_course_quiz_path( @course, quiz ) )
      html << link_to( image_tag( 'application_form_delete.png', :alt => 'Delete Quiz' ), course_quiz_path( @course, quiz ),
                       :confirm => 'Are you sure?', :method => :delete )
      html << link_to( image_tag( 'chart_pie.png', :alt => 'Grade Distribution' ), course_quiz_grade_distribution_path( @course, quiz ), :rel => 'lightbox' )
    end.join("\n")
  end

  def quiz_information(quiz)
    return unless instructor?
    viewable = quiz.viewable_now? ? 'now' : datetime_format(quiz.viewable_at)
    "Viewable #{viewable}"
  end

  def quiz_details(quiz)
    quiz.open? ? open_quiz_details(quiz) : closed_quiz_details(quiz)
  end

  def open_quiz_details(quiz)
    returning(Array.new) do |html|
      html << content_tag(:p, "Due on: #{datetime_format(quiz.due_at)}")

      if instructor?
        html << content_tag(:p, "Participation so far: #{percent_format quiz.participation}")
      elsif quiz.attempted_by? current_user
        html << content_tag(:p, "Status: #{quiz.answers_from(current_user).size} of #{quiz.questions.size} questions attempted")
        html << link_to_function('Show completion code', "Effect.Appear('completion_code')")
        html << content_tag(:div, quiz.completion_code_for(current_user), :style => "display: none; width: 80%", :id => "completion_code")
      end

      html << link_to('Take Quiz', course_quiz_path(@course, quiz))
    end.join("\n")
  end

  def closed_quiz_details(quiz)
    returning(Array.new) do |html|
      if instructor?
        html << content_tag(:p, "Participation: #{percent_format quiz.participation}")
      else
        html << content_tag(:p, "Your Score: #{percent_format quiz.grade_for(current_user)}")
        html << content_tag(:p, "Percentile Rank: #{percent_format quiz.percentile_for(current_user)}")
      end

      html << content_tag(:p, "Mean Score: #{percent_format quiz.mean}")
      html << content_tag(:p, "Standard Deviation: #{number_with_precision quiz.standard_deviation, 2}")
    end.join("\n")
  end

  def question_attributes
    @quiz.closed? ? 'disabled="disabled"' : ''
  end

  def choice_class(quiz_question, choice, responses)
    classes = Array.new
    responses ||= Array.new

    if current_user.instructor? and @quiz.closed?
      classes << 'hidden-answer' if quiz_question.answer == choice.id
    elsif current_user.instructor? or @quiz.closed?
      classes << 'answer' if quiz_question.answer == choice.id
    end

    classes << 'selected' if responses.detect {|x| x.question_choice_id == choice.id }

    %Q|class = "#{classes.join(' ')}"|
  end

  def choice_onclick(quiz_question, choice)
    path = course_quiz_question_responses_path( @course, @quiz )
    parameters = "quiz_question_id=#{quiz_question.id}&question_choice_id=#{choice.id}&authenticity_token=#{form_authenticity_token}"

    %Q|onclick = "choose_answer('#{dom_id(quiz_question)}', '#{dom_id(choice)}', '#{path}', '#{parameters}')"|
  end

end
