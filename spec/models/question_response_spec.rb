require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionResponse do

  fixtures :users, :quizzes

  before(:each) do
    @open_quiz = quizzes(:first)
    @closed_quiz = quizzes(:second)

    @question_response = QuestionResponse.new :user_id => 1, :course_id => 1, :quiz_id => 1,
                                              :quiz_question_id => 1, :question_choice_id => 1
  end

  it 'should not let a response through after the quiz has closed' do
    @question_response.quiz_id = @closed_quiz.id
    @question_response.save.should == false
    @question_response.should have(1).error_on(:quiz_id)
  end

  it 'should let a response through if the quiz is open' do
    @question_response.quiz_id = @open_quiz.id
    @question_response.save.should == true
  end

end
