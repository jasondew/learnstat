require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionResponsesController, "handling POST /question_responses" do

  before do
    @question_response = mock_model(QuestionResponse, :to_param => "1")
    QuestionResponse.stub!(:new).and_return(@question_response)

    @quiz_question = mock_model(QuizQuestion, :correct_answer? => true)
    QuizQuestion.stub!(:find).and_return(@quiz_question)

    @current_user = mock_model(User)

    @request.env["HTTP_ACCEPT"] = "text/javascript"

    login_as :student_1
  end
  
  def post_with_successful_save
    @question_response.should_receive(:save).and_return(true)
    post :create, :user_id => 2, :course_id => 1, :quiz_id => 3, :quiz_question_id => 12, :question_choice_id => 42
  end
  
  def post_with_failed_save
    @question_response.should_receive(:save).and_return(false)
    post :create, :user_id => 2, :course_id => 1, :quiz_id => 3, :quiz_question_id => 12, :question_choice_id => 42
  end
  
  it "should create a new question_response" do
    QuestionResponse.should_receive(:new).and_return(@question_response)
    post_with_successful_save
  end

  it "should redirect to the new question_response on successful save" do
    post_with_successful_save
    response.should render_template(:create)
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.headers["Status"].should == '406 Not Acceptable'
  end
end
