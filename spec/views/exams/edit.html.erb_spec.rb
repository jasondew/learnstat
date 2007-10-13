require File.dirname(__FILE__) + '/../../spec_helper'

describe "/exams/edit.html.erb" do
  include ExamsHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:exam] = @exam = mock_model(Exam, :null_object => true)
  end

  it "should render edit form" do
    render "/exams/edit.html.erb"
    
    response.should have_tag("form[action=#{course_exam_path(@course,@exam)}][method=post]") do
    end
  end
end


