module QuizzesHelper

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
  end

  def question_text(course, quiz, quiz_question)
    returning(Array.new) do |html|
      html << link_to(image_tag('chart_pie.png', :alt => 'Graph'), course_quiz_response_distribution_path(@course, @quiz, quiz_question),
                      :rel => 'lightbox') if instructor?
      html << quiz_question.content
    end.join("\n")
  end

  def question_attributes(quiz_question)
    { :id => dom_id(quiz_question) }
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
