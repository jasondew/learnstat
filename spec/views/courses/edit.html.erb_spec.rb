require File.dirname(__FILE__) + '/../../spec_helper'

describe "/courses/edit.html.erb" do
  include CoursesHelper
  
  before do
    @course = mock_model(Course)
    assigns[:course] = @course
  end

  it "should render edit form" do
    @course.stub!(:title).and_return('title')
    @course.stub!(:department).and_return('department')
    @course.stub!(:number).and_return('number')
    @course.stub!(:semester).and_return('semester')
    @course.stub!(:year).and_return('year')
    @course.stub!(:section).and_return('section')
    @course.stub!(:registration_code).and_return('registration_code')
    @course.stub!(:registration_closed_at).and_return(3.days.from_now)

    render "/courses/edit.html.erb"
    
    response.should have_tag("form[action=#{course_path(@course)}][method=post]") do
    end
  end
end


