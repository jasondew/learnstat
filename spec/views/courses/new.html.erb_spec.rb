require File.dirname(__FILE__) + '/../../spec_helper'

describe "/courses/new.html.erb" do
  include CoursesHelper
  
  before do
    @course = mock_model(Course)
    @course.stub!(:new_record?).and_return(true)
    assigns[:course] = @course
  end

  it "should render new form" do
    render "/courses/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", courses_path) do
    end
  end
end


