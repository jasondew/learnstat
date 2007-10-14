require File.dirname(__FILE__) + '/../../spec_helper'

describe "/courses/show.html.erb" do
  include CoursesHelper
  
  before do
    assigns[:course] = @course = mock_model(Course)
    assigns[:quizzes] = @quizzes = []
    @student = mock_model(User, :null_object => true)
    assigns[:students] = @students = [@student]
    login_as :student_1
  end

  it "should render attributes in <p>" do
    @course.stub!(:announcements).and_return([])
    @course.stub!(:documents).and_return([])
    @course.stub!(:students).and_return([])
    @course.stub!(:gradeables).and_return([])

    render "/courses/show.html.erb"
  end
end

