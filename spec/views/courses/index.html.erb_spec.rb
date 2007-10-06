require File.dirname(__FILE__) + '/../../spec_helper'

describe "/courses/index.html.erb" do
  include CoursesHelper
  
  before do
    @course_1 = mock_model(Course)
    @course_2 = mock_model(Course)

    assigns[:courses] = [@course_1, @course_2]
  end

  it "should render list of courses" do
    [@course_1, @course_2].each do |course|
      course.stub!(:title).and_return('some course title')
      course.stub!(:enrollment).and_return(17)
    end

    render "/courses/index.html.erb"
  end
end

