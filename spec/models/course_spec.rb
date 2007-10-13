require File.dirname(__FILE__) + '/../spec_helper'

describe Course do
  before(:each) do
    @course = Course.new
  end

  it "should be valid" do
    @course.should be_valid
  end

  it "should know about its gradeables" do
    @quiz = mock_model(Quiz, :due_at => 3.days.ago )
    @exam = mock_model(Exam, :given_on => 1.day.ago )

    @course.should_receive(:closed_quizzes).and_return(@quiz)
    @course.should_receive(:exams).and_return(@exam)

    @course.gradeables.should == [@quiz, @exam]
  end

  it "should know about its enrollment" do
    @list.should_receive(:count).and_return(3)
    @course.should_receive(:students).and_return(@list)
    @course.enrollment.should == 3
  end
end
