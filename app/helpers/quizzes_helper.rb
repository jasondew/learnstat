module QuizzesHelper

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
    path = user_course_quiz_question_responses_path( :course_id => @course, :quiz_id => @quiz, :user_id => current_user )
    parameters = "quiz_question_id=#{quiz_question.id}&question_choice_id=#{choice.id}&authenticity_token=#{form_authenticity_token}"

    %Q|onclick = "choose_answer('#{dom_id(quiz_question)}', '#{dom_id(choice)}', '#{path}', '#{parameters}')"|
  end

end
