require File.dirname(__FILE__) + '/../../spec_helper'

describe "/exams/show.html.erb" do
  include ExamsHelper
  
  before do
    assigns[:exam] = @exam = mock_model(Exam, :null_object => true)
    assigns[:course] = @course = mock_model(Course)
    assigns[:current_user] = @current_user = mock_model(User, :null_object => true)
  end

  it "should render attributes in <p>" do
    render "/exams/show.html.erb"
  end
end

