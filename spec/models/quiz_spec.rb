require File.dirname(__FILE__) + '/../spec_helper'

describe Quiz do

  fixtures :courses, :quizzes, :users, :question_responses, :questions, :quiz_questions

  before(:each) do
    @quiz = Quiz.new :name => 'Test Quiz', :due_at => 2.days.from_now
    @quiz_1 = quizzes(:first)
    @quiz_2 = quizzes(:second)
    @student_1 = users(:student_1)
    @student_2 = users(:student_2)
  end

  it 'should know all responses for a particular question' do
    @quiz.responses_for(1).should == []
    quizzes(:first).responses_for(5).size.should == 2
  end

  it 'should be able to encode and decode completion codes' do
    Quiz.decode_completion_code("BAhbCGkHaQhbCGkJaQppCw==\n").should == [2, 3, [4, 5, 6]]
    Quiz.decode_completion_code("QhbCGkJaQppCw==\n").should == nil

    @quiz.completion_code_for( @student_1 ).should == "BAhbCCIGMjBbAA==\n"
    Quiz.decode_completion_code(@quiz.completion_code_for( @student_2 )).size.should == 3
  end

  it 'should know what course it belongs to' do
    quizzes(:first).course.should == courses(:stat110)
  end

  it 'should only allow a quiz with a due date in the future to save' do
    @quiz.due_at = 1.day.ago
    @quiz.save.should == false
    @quiz.should have(1).error_on( :due_at )

    @quiz.due_at = 1.day.from_now
    @quiz.save.should == true
  end

  it 'should only allow the viewable date to be set before the due date' do
    @quiz.viewable_at = 3.days.from_now
    @quiz.save.should == false
    @quiz.should have(1).error_on( :viewable_at )

    @quiz.viewable_at = 30.minutes.from_now
    @quiz.save.should == true
  end

  it 'should know if its viewable' do
    @quiz.viewable_at = 10.minutes.ago
    @quiz.viewable_now?.should == true
    
    @quiz.viewable_at = 30.minutes.from_now
    @quiz.viewable_now?.should == false
  end

  it 'should know if its open or closed' do
    @quiz.due_at = 10.minutes.ago
    @quiz.closed?.should == true
    @quiz.open?.should == false

    @quiz.due_at = 10.minutes.from_now
    @quiz.closed?.should == false
    @quiz.open?.should == true
  end

  it 'should know scores for each student' do
    @quiz_1.grade_for( @student_1 ).should == 0.6
    @quiz_1.grade_for( @student_2 ).should == 0.4
  end

  it 'should know its scores' do
    @quiz_1.scores.sort.should == [0.4, 0.6]
    @quiz_2.scores.should == []
  end

  it 'should know its mean score' do
    @quiz_1.mean.should == 0.5
    @quiz_2.mean.should == nil
  end

  it 'should know its scores standard deviation' do
    @quiz_1.standard_deviation.should be_close(0.14, 0.01)
    @quiz_2.standard_deviation.should == nil
  end

  it 'should know who attempted itself' do
    @quiz_1.attempted_by?(@student_1).should == true
    @quiz_1.attempted_by?(@student_2).should == true
    @quiz_2.attempted_by?(@student_1).should == false
  end

  it 'should know the percentile rank of each student who attempted itself' do
    @quiz_1.percentile_for(@student_1).should == 1
    @quiz_1.percentile_for(@student_2).should == 0.5
    @quiz_2.percentile_for(@student_1).should == nil
  end

  it 'should know the number of students that attempted itself' do
    @quiz_1.number_attempted.should == 2
    @quiz_2.number_attempted.should == 0
  end

  it 'should be able to calculate its participation' do
    @quiz_1.participation.should == 1
    @quiz_2.participation.should == 0
  end

end
