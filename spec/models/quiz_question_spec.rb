require File.dirname(__FILE__) + '/../spec_helper'

describe QuizQuestion do

  fixtures :questions

  before(:each) do
    @quiz_question = QuizQuestion.new :quiz_id => 1, :question_id => 1
  end

  it 'should deletgate to its question' do
    @quiz_question.answer.should == 42
    @quiz_question.content.should == 'Some question text'
    @quiz_question.chapter.should == 2

    @quiz_question.correct_answer?(24).should == false
    @quiz_question.correct_answer?(42).should == true

    @quiz_question.choices.should == []
  end
end
