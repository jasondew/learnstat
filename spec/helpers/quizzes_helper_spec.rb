require File.dirname(__FILE__) + '/../spec_helper'

def current_user
  @user
end

def form_authenticity_token
  42
end

describe QuizzesHelper do

  before(:each) do
    @user = mock_model(User)
    @quiz = mock_model(Quiz)
    @course = mock_model(Course)
    @quiz_question = mock_model(QuizQuestion)
    @choice = mock_model(QuestionChoice)
    @response = mock_model(QuestionResponse)
    @responses = [ @response ]
  end
  
  it 'should provide attributes for a question' do
    @quiz.stub!(:closed?).and_return(true)
    question_attributes.should == 'disabled="disabled"'

    @quiz.stub!(:closed?).and_return(false)
    question_attributes.should == ''
  end

  it 'should provide a class for a choice' do
    @quiz_question.stub!(:answer).and_return( 2 )

    scenarios = Array.new

    scenarios << { :instructor => true,  :quiz_closed => true, :choice => 2, :chosen => 4, :class => 'hidden-answer' }
    scenarios << { :instructor => true,  :quiz_closed => true, :choice => 4, :chosen => 4, :class => 'selected' }
    scenarios << { :instructor => true,  :quiz_closed => true, :choice => 2, :chosen => 2, :class => 'hidden-answer selected' }

    scenarios << { :instructor => true,  :quiz_closed => false, :choice => 2, :chosen => 4, :class => 'answer' }
    scenarios << { :instructor => true,  :quiz_closed => false, :choice => 4, :chosen => 4, :class => 'selected' }
    scenarios << { :instructor => true,  :quiz_closed => false, :choice => 2, :chosen => 2, :class => 'answer selected' }

    scenarios << { :instructor => false, :quiz_closed => true,  :choice => 2, :chosen => 2, :class => 'answer selected' }
    scenarios << { :instructor => false, :quiz_closed => true,  :choice => 2, :chosen => 4, :class => 'answer' }

    scenarios << { :instructor => false, :quiz_closed => false, :choice => 2, :chosen => 2, :class => 'selected' }
    scenarios << { :instructor => false, :quiz_closed => false, :choice => 2, :chosen => 4, :class => '' }

    scenarios.each do |scenario|
      @user.stub!(:instructor?).and_return( scenario[:instructor] )
      @quiz.stub!(:closed?).and_return( scenario[:quiz_closed] )
      @choice.stub!(:id).and_return( scenario[:choice] )
      @response.stub!(:question_choice_id).and_return( scenario[:chosen] )

      choice_class(@quiz_question, @choice, @responses).should == %Q|class = "#{scenario[:class]}"|
    end

  end

  it 'should provide an onclick for a choice' do
    @quiz_question.stub!(:id).and_return(4)
    @choice.stub!(:id).and_return(5)

    choice_onclick(@quiz_question, @choice).should == %Q|onclick = "choose_answer('quiz_question_4', 'question_choice_5', '/courses/#{@course.id}/quizzes/#{@quiz.id}/question_responses', 'quiz_question_id=4&question_choice_id=5&authenticity_token=42')"|
  end

end
