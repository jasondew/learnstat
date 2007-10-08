require File.dirname(__FILE__) + '/../../spec_helper'

describe "/grades/new.html.erb" do
  include GradesHelper
  
  before do
    assigns[:grade] = @grade = mock_model(Grade, :new_record? => true)
    assigns[:current_user] = @current_user = mock_model(User)
    assigns[:course] = @course = mock_model(Course)
  end

  it "should render new form" do
    render "/grades/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", user_course_grades_path(@current_user, @course)) do
    end
  end
end


