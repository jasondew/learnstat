Given /^a question with the following choices:$/ do |choices|
  @question = Factory(:question)
  choices.raw.map {|content| Factory(:question_choice, :question => @question, :content => content.first) }
end

Given /^an? (\w+) quiz named "([^"]+)"(?:| with (\d+) questions?)$/ do |quiz_type, quiz_name, question_count|
  @quiz = Factory("#{quiz_type}_quiz", :course => @course, :name => quiz_name)
  @quiz_questions = []
  question_count.to_i.times { @quiz_questions << Factory(:quiz_question, :quiz => @quiz) } if question_count
end

Given /^a response with (\d+) correct$/ do |number_correct_string|
  number_correct = number_correct_string.to_i
  @quiz_response = @quiz.responses.build :user => @user

  @quiz_questions.each do |quiz_question|
    correct = number_correct > 0
    choice_id = correct ? quiz_question.question.answer : -1

    @quiz_response.quiz_question_responses.build :quiz_question => quiz_question, :question_choice_id => choice_id
    number_correct -= 1
  end

  @quiz_response.save :validate => false
end
