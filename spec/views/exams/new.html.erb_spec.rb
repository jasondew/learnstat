require File.dirname(__FILE__) + '/../../spec_helper'

describe "/exams/new.html.erb" do
  include ExamsHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:exam] = @exam = mock_model(Exam, :null_object => true)
    @exam.stub!(:new_record?).and_return(true)
  end

  it "should render new form" do
    render "/exams/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", course_exams_path(@course)) do
    end
  end
end


