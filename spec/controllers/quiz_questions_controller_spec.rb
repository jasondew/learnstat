require File.dirname(__FILE__) + '/../spec_helper'

describe QuizQuestionsController, "handling POST /quiz_questions" do

  before do
    @quiz = mock_model(Quiz)
    @course = mock_model(Course)
    @question = mock_model(Question)
    @quiz_question = mock_model(QuizQuestion)
    @quiz_questions = mock(Array)

    Course.stub!(:find).and_return(@course)
    Quiz.stub!(:find).and_return(@quiz)

    login_as :instructor
  end

  it "should call the right functions" do
    @quiz.should_receive(:questions).and_return(@quiz_questions)
    @quiz_questions.should_receive(:build).and_return(@quiz_question)
    @quiz_question.should_receive(:question).and_return(@question)
    @quiz_question.should_receive(:save).and_return(true)

    post :create, :course_id => @course.id, :quiz_id => @quiz.id, :question_id => @question.id
  end

  it "should call the right functions on save failure" do
    @quiz.should_receive(:questions).and_return(@quiz_questions)
    @quiz_questions.should_receive(:build).and_return(@quiz_question)
    @quiz_question.should_receive(:question).and_return(@question)
    @quiz_question.should_receive(:save).and_return(false)

    post :create, :course_id => @course.id, :quiz_id => @quiz.id, :question_id => @question.id
  end
end

describe QuizQuestionsController, "handling DELETE /quiz_questions/1" do

  before do
    @quiz = mock_model(Quiz)
    @course = mock_model(Course)
    @question = mock_model(Question)
    @quiz_question = mock_model(QuizQuestion, :destroy => true, :question => nil, :to_param => 1, :find => nil)
    @quiz_questions = mock(Array)

    Course.stub!(:find).and_return(@course)
    Quiz.stub!(:find).and_return(@quiz)

    login_as :instructor
  end

  it "should call the right functions" do
    @quiz.should_receive(:questions).and_return(@quiz_questions)
    @quiz_questions.should_receive(:find).and_return(@quiz_question)
    @quiz_question.should_receive(:question).and_return(@question)
    @quiz_question.should_receive(:destroy).and_return(true)

    delete :destroy, :course_id => @course.id, :quiz_id => @quiz.id, :id => @quiz_question.id
  end
  
end
