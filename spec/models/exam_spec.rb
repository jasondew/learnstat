require "spec_helper"

describe Exam do

  let(:exam) { Factory.build(:exam) }

  it("should be valid from the factory") { exam.should be_valid }

  context "#grade_for" do
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

  context "#mean" do
    it "should return nil when there are no grades" do
      stub(exam).grades { [] }
      exam.mean.should be_nil
    end

    it "should return the mean score when there are grades" do
      grades = stub!.size { 2 }.subject
      stub(grades).sum(:value) { 180 }
      stub(exam).grades { grades }

      exam.mean.should == 90
    end
  end

  context "#standard_deviation" do
    it "should return nil when there are no grades" do
      stub(exam).grades { [] }
      exam.standard_deviation.should be_nil
    end

    it "should return nil when there is only one grade" do
      stub(exam).grades { [:foo] }
      exam.standard_deviation.should be_nil
    end

    it "should return the standard deviation when there are grades" do
      grades = [stub!.value {  80 }.subject,
                stub!.value {  90 }.subject,
                stub!.value { 100 }.subject]

      stub(exam).mean { 90 }
      stub(exam).grades { grades }

      exam.standard_deviation.should == 10
    end
  end

end
