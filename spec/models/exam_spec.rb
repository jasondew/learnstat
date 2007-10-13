require File.dirname(__FILE__) + '/../spec_helper'

describe Exam do

  before(:each) do
    @exam = Exam.new
    @course = mock_model(Course)
    @grade = mock_model(Grade)

    @grades = [mock_model(Grade, :value => 12, :+ => 24), mock_model(Grade, :value => 12, :+ => 24)]
    @exam.stub!(:grades).and_return(@grades)
  end

  it "should be valid" do
    @exam.should be_valid
  end

  it "should be able to find the grade for a student when it exists" do
    @user = mock_model(User)
    @user.should_receive(:id).and_return(12)
    @grades.should_receive(:find_by_user_id).with(12).and_return(@grade)
    @grade.should_receive(:value).and_return(0.5)

    @exam.grade_for(@user).should == 0.5
  end

  it "should be able to find the grade for a student when it doesn't exist" do
    @user = mock_model(User)
    @user.should_receive(:id).and_return(12)
    @grades.should_receive(:find_by_user_id).with(12).and_return(nil)

    @exam.grade_for(@user).should == '**'
  end

  it "should return nil when asked for the mean score and there aren't any scores" do
    @grades.should_receive(:size).and_return(0)

    @exam.mean.should be_nil
  end

  it "should be able to calculate the mean score when there are scores" do
    @grades.should_receive(:size).twice.and_return(2)
    @grades.should_receive(:sum).with(:value).and_return(22)

    @exam.mean.should == 11
  end

  it "should be able to calculate the standard deviation when there are enough scores" do
    @exam.should_receive(:mean).twice.and_return(12)

    @exam.standard_deviation.should == 0
  end

  it "should set grade attributes (hash version)" do
    @attributes = [ {} ]
    @grades.should_receive(:build).with({})

    @exam.grade_attributes=(@attributes)
  end

  it "should set grade attributes (array version)" do
    @attributes = [ [@grade.id, {}] ]

    @grades.should_receive(:find).with(@grade.id).and_return(@grade)
    @grade.should_receive(:update_attributes).with({})

    @exam.grade_attributes=(@attributes)
  end
end
