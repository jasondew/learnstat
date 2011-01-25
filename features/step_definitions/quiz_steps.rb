Given /^a question with the following choices:$/ do |choices|
  @question = Factory(:question)
  choices.raw.map {|content| Factory(:question_choice, :question => @question, :content => content.first) }
end

Given /^an? (\w+) quiz named "([^"]+)"(?:| with (\d+) questions?)$/ do |quiz_type, quiz_name, question_count|
  @quiz = Factory("#{quiz_type}_quiz", :course => @course, :name => quiz_name)
  (question_count.to_i - 1).times { Factory(:quiz_question, :quiz => @quiz) } if question_count
end
