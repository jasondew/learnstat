require File.dirname(__FILE__) + '/../../spec_helper'

describe "/courses/show.html.erb" do
  include CoursesHelper
  
  before do
    @course = mock_model(Course)

    assigns[:course] = @course
    login_as :student_1
  end

  it "should render attributes in <p>" do
    @course.stub!(:announcements).and_return([])
    @course.stub!(:documents).and_return([])
    @course.stub!(:quizzes).and_return([])
    @course.stub!(:open_quizzes).and_return([])
    @course.stub!(:closed_quizzes).and_return([])
    @course.stub!(:students).and_return([])

    render "/courses/show.html.erb"
  end
end

