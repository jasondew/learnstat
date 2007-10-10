require File.dirname(__FILE__) + '/../../spec_helper'

describe "/quizzes/edit.html.erb" do
  include QuizzesHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:quiz] = @quiz = mock_model(Quiz, :null_object => true)
    assigns[:questions] = @questions = mock_model(Array, :each => [@question])
    @question = mock_model(Question)
  end

  it "should render edit form" do
    render "quizzes/edit.html.erb"
    
    response.should have_tag("form[action=#{course_quiz_path(@course,@quiz)}][method=post]") do
    end
  end
end


