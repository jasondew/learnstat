require File.dirname(__FILE__) + '/../../spec_helper'

describe "/quizzes/show.html.erb" do
  include QuizzesHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:quiz] = @quiz = mock_model(Quiz, :null_object => true)
    assigns[:current_user] = @current_user = mock_model(User, :null_object => true)
  end

  it "should render attributes in <p>" do
    render "/quizzes/show.html.erb"
  end
end

