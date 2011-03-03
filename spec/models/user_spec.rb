require "spec_helper"

describe User do

  it("a user should be valid from the factory") { Factory.build(:user).should be_valid }
  it("an instructor should be valid from the factory") { Factory.build(:instructor).should be_valid }

  context "#final_grade" do
    it "should be nil if the final hasn't been taken" do
      mock(subject).grades { [mock!.exam { mock!.final? { false }.subject }.subject] }
      subject.final_grade.should == nil
    end

    it "should be calculated from the #mean_score, #exam_mean_score, and final exam score if the final has been taken" do
      final_exam = Factory.build(:exam, :final => true)
      final_exam_grade = Factory.build(:grade, :value => 0.9, :exam => final_exam)

      mock(subject).grades { [final_exam_grade] }
      mock(subject).mean_score { 0.8 }
      mock(subject).exam_mean_score { 0.7 }

      subject.final_grade.should be_within(0.001).of(0.78)
    end
  end
end
