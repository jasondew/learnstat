require File.dirname(__FILE__) + '/../../spec_helper'

describe "/exams/index.html.erb" do
  include ExamsHelper
  
  before do
    exam_98 = mock_model(Exam)
    exam_99 = mock_model(Exam)

    assigns[:exams] = [exam_98, exam_99]
    assigns[:course] = @course = mock_model(Course)
  end

  it "should render list of exams" do
    render "/exams/index.html.erb"
  end
end

