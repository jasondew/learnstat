module QuizzesHelper

  def quiz_title(quiz)
    returning(Array.new) do |html|
      html << @quiz.name
      html << link_to(image_tag('application_form_edit.png', :alt => 'Edit Quiz'), edit_course_quiz_path(@course, @quiz)) if current_user.instructor?
    end.join("\n")
  end

  def quiz_instructions(quiz)
    returning(Array.new) do |html|
      if @quiz.closed?
        html << "<strong>Completed Assignment:</strong> This assignment was due on #{datetime_format(@quiz.due_at)}."
        html << "Your answer, if you provided one, is shown in green.  The correct answer to the question is shown underlined."
        html << content_tag(:p, "Mean: #{percent_format @quiz.mean}, Standard Deviation: #{number_with_precision @quiz.standard_deviation, 2}",
                            :class => "information")
      else
        html << "<strong>Instructions:</strong> Complete the following questions by clicking on the answer of your choice."
        html << "You have until #{datetime_format(@quiz.due_at)} to complete this assignment.  No assignment, written or "
        html << "otherwise, will be accepted after that time."

        html << challenge(current_user) if current_user.mean_score
      end
    end.join("\n")
  end

  def challenge(user)
    content_tag(:p, "Your average score is #{percent_format current_user.mean_score}, can you do better here?", :class => "information")
  end

  def quiz_instructor_information(quiz)
    return unless instructor?

    content_tag(:p) do
      returning(Array.new) do |html|
        html << content_tag(:div, "Participation: #{percent_format( @quiz.participation )}")
        html << content_tag(:div, "Questions: #{@quiz.questions.count}")
      end.join("\n")
    end
  end

  def instructor_quiz_links(quiz)
    return unless instructor?

    returning(Array.new) do |html|
      html << link_to( image_tag( 'application_form_edit.png', :alt => 'Edit Quiz' ), edit_course_quiz_path( @course, quiz ) )
      html << link_to( image_tag( 'application_form_delete.png', :alt => 'Delete Quiz' ), course_quiz_path( @course, quiz ),
                       :confirm => 'Are you sure?', :method => :delete )
      html << link_to( image_tag( 'chart_pie.png', :alt => 'Grade Distribution' ), course_quiz_grade_distribution_path( @course, quiz ), :rel => 'lightbox' )
    end.join("\n")
  end

  def quiz_question_links(question, quiz_question)
    returning(Array.new) do |html|
      if quiz_question 
        html << link_to_remote( image_tag( 'table_delete.png', :alt => 'Delete Question' ),
                                :url => course_quiz_quiz_question_path(@course, @quiz, quiz_question), :method => :delete ) 
      else
        html << link_to_remote( image_tag( 'table_add.png', :alt => 'Add Question' ), :url => course_quiz_quiz_questions_path(@course, @quiz),
                                :with => %Q|"question_id=#{question.id}"|, :method => :post ) 
      end
 
      html << link_to( image_tag( 'table_edit.png', :alt => 'Edit Question' ), edit_question_path(question), :popup => true )
      html << link_to( image_tag( 'table_delete.png', :alt => 'Delete Question' ), question_path(question), :confirm => 'Are you sure?', :method => :delete )
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
      html << content_tag(:div, "Due on: #{datetime_format(quiz.due_at)}")

      if instructor?
        if quiz.viewable_now?
          html << content_tag(:div, "Participation so far: #{percent_format quiz.participation}")
        else
          html << content_tag(:div, link_to("Make viewable now", mark_viewable_course_quiz_path(@course, quiz), :method => :post))
        end
      else
        if quiz.attempted_by? current_user
          html << content_tag(:div, "Status: #{quiz.answers_from(current_user).size} of #{quiz.questions.size} questions attempted")
          html << content_tag(:div, link_to_function('Show completion code', "Effect.Appear('completion_code')"))
          html << content_tag(:div, quiz.completion_code_for(current_user), :style => "display: none; width: 80%", :id => "completion_code")
          html << content_tag(:div, link_to('Take Quiz', course_quiz_path(@course, quiz)))
        end
      end
    end.join("\n")
  end

  def closed_quiz_details(quiz)
    returning(Array.new) do |html|
      if instructor?
        html << content_tag(:div, "Participation: #{percent_format quiz.participation}")
      else
        html << content_tag(:div, "Your Score: #{percent_format quiz.grade_for(current_user)}")
        html << content_tag(:div, "Percentile Rank: #{percent_format quiz.percentile_for(current_user)}")
      end

      html << content_tag(:div, "Mean Score: #{percent_format quiz.mean}")
      html << content_tag(:div, "Standard Deviation: #{number_with_precision quiz.standard_deviation, 2}")
    end.join("\n")
  end

  def question_text(course, quiz, quiz_question)
    returning(Array.new) do |html|
      html << link_to(image_tag('chart_pie.png', :alt => 'Graph'), course_quiz_response_distribution_path(@course, @quiz, quiz_question),
                      :rel => 'lightbox') if instructor?
      html << quiz_question.content
    end.join("\n")
  end

  def question_attributes(quiz_question)
    attributes = { :id => dom_id(quiz_question) }
    attributes.update( :disabled => "disabled" ) if @quiz.closed?
    attributes
  end

  def choice_attributes(quiz_question, question_choice, responses)
    { :id => dom_id(question_choice), :class => choice_class(quiz_question, question_choice, responses), :onclick => choice_onclick(quiz_question, question_choice) }
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

    classes.join(' ')
  end

  def choice_onclick(quiz_question, choice)
    path = course_quiz_question_responses_path( @course, @quiz )
    parameters = "quiz_question_id=#{quiz_question.id}&question_choice_id=#{choice.id}&authenticity_token=#{form_authenticity_token}"

    "choose_answer('#{dom_id(quiz_question)}', '#{dom_id(choice)}', '#{path}', '#{parameters}')"
  end

end
