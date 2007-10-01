module QuizzesHelper

  def choice_class(question, choice, responses)
    classes = Array.new
    responses ||= []

    if current_user.instructor? or quiz.closed?
      classes << 'answer' if question.answer == choice.id
    end

    classes << 'chosen' if responses.detect {|x| x.question_choice_id == choice.id }

    %Q|class = "#{classes.join(', ')}"|
  end

  def choice_onclick(question, choice)
    
  end

end
