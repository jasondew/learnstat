require File.dirname(__FILE__) + '/../../spec_helper'

describe "/quizzes/new.html.erb" do
  include QuizzesHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:quiz] = @quiz = mock_model(Quiz, :null_object => true)
    @quiz.stub!(:new_record?).and_return(true)
  end

  it "should render new form" do
    render "/quizzes/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", course_quizzes_path(@course)) do
    end
  end
end


