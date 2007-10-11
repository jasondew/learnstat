require File.dirname(__FILE__) + '/../spec_helper'

describe ReportsController do

  before do
    @course = mock_model(Course)
    Course.stub!(:find).and_return(@course)

    @quiz = mock_model(Quiz)
    Quiz.stub!(:find).and_return(@quiz)

    @question = mock_model(Question)
    @choice = mock_model(QuestionChoice, :null_object => true)
    @question_response = mock_model(QuestionResponse, :null_object => true)

    @questions = mock(Array)
    @responses = [@question_response]
    @choices = [@choice]
    @distribution = [2]

    login_as :instructor
  end

  it "should produce a graph for a particular question" do
    @quiz.should_receive(:questions).and_return(@questions)
    @quiz.should_receive(:responses_for).with('1').and_return(@responses)
    @questions.should_receive(:find).and_return(@question)
    @question.should_receive(:choices).and_return(@choices)
    @question.should_receive(:answer).and_return(2)

    get :show, :course_id => 1, :quiz_id => 1, :id => 1

    response.headers["Status"].should == '200 OK'
  end

end
