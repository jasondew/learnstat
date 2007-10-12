require File.dirname(__FILE__) + '/../../spec_helper'

describe "/grades/edit.html.erb" do
  include GradesHelper
  
  before do
    assigns[:grade] = @grade = mock_model(Grade)
    assigns[:current_user] = @current_user = mock_model(User)
    assigns[:course] = @course = mock_model(Course)
  end

  it "should render edit form" do
    render "/grades/edit.html.erb"
    
    response.should have_tag("form[action=#{course_grade_path(@course, @grade)}][method=post]") do
    end
  end
end


