require "spec_helper"

describe Exam do

  it("should be valid from the factory") { Factory.build(:exam).should be_valid }

  context "#grade_for" do
    let(:exam) { Factory.build(:exam) }

    it "should return the grade value when a grade exists" do
      grade = Factory.build(:grade, :value => 92)
      user = mock!.id { :user_id }.subject
      mock(exam).grades { mock!.find_by_user_id(:user_id) { grade }.subject }

      exam.grade_for(user).should == 0.92
    end

    it "should return ** when no grade exists" do
      user = mock!.id { :user_id }.subject
      mock(exam).grades { mock!.find_by_user_id(:user_id) { nil }.subject }

      exam.grade_for(user).should == "**"
    end
  end

=begin
  before(:each) do
    @exam = Exam.new
    @course = Factory.build(:course)
    @grade = Factory.build(:grade)

    @grades = [Factory.build(:grade, :value => 88), Factory.build(:grade, :value => 91)]
    @exam.stub!(:grades).and_return(@grades)
  end

  it "should be valid" do
    @exam.should be_valid
  end

  it "should be able to find the grade for a student when it exists" do
    @user = Factory.build(:user)
    @user.should_receive(:id).and_return(12)
    @grades.should_receive(:find_by_user_id).with(12).and_return(@grade)
    @grade.should_receive(:value).and_return(0.5)

    @exam.grade_for(@user).should == 0.5
  end

  it "should be able to find the grade for a student when it doesn't exist" do
    @user = Factory.build(:user)
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
=end

end
