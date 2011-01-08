Given /^a question with the following choices:$/ do |choices|
  @question = Factory(:question)
  choices.raw.map {|content| Factory(:question_choice, :question => @question, :content => content.first) }
end

Given /^a quiz question$/ do
  Factory(:quiz_question, :quiz => @quiz, :question => @question)
end

Given /^an open quiz named "([^"]+)"$/ do |quiz_name|
  @quiz = Factory(:open_quiz, :course => @course, :name => quiz_name)
end

Given /^a closed quiz named "([^"]+)"$/ do |quiz_name|
  @quiz = Factory(:closed_quiz, :course => @course, :name => quiz_name)
end

Given /^a hidden quiz named "([^"]+)"$/ do |quiz_name|
  @quiz = Factory(:hidden_quiz, :course => @course, :name => quiz_name)
end
