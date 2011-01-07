require "spec_helper"

describe Course do

  let(:course) { Factory.build(:course) }

  it("should be valid from the factory") { course.should be_valid }

  context "#open" do
    it "should be true when registration_closes_at is in the future" do
      course.registration_closes_at = 1.day.from_now
      course.open?.should be_true
    end

    it "should be false when registration_closes_at is in the past" do
      course.registration_closes_at = 1.day.ago
      course.open?.should be_false
    end
  end

  context "#enrollment" do
    it "should return 0 if there are not students" do
      mock(course).students { [] }
      course.students.count == 0
    end

    it "should return the number of students in the course if there are any" do
      mock(course).students { [:foo, :bar] }
      course.students.count == 2
    end
  end

  context "#gradeables" do
    it "should get all closed quizzes and exams and return them sorted by the appropriate fields" do
      exam_01_15 = Factory.build(:exam, :given_on => Date.new(2010, 1, 15))
      exam_01_25 = Factory.build(:exam, :given_on => Date.new(2010, 1, 25))
      quiz_01_01 = Factory.build(:quiz, :due_at => Date.new(2010, 1,  1).to_datetime)
      quiz_01_20 = Factory.build(:quiz, :due_at => Date.new(2010, 1, 20).to_datetime)
      quiz_01_30 = Factory.build(:quiz, :due_at => Date.new(2010, 1, 30).to_datetime)

      mock(course).exams { [exam_01_25, exam_01_15] }
      mock(course).quizzes { mock!.closed { [quiz_01_01, quiz_01_30, quiz_01_20] }.subject }

      course.gradeables.should == [quiz_01_01, exam_01_15, quiz_01_20, exam_01_25, quiz_01_30]
    end
  end

end
