require File.dirname(__FILE__) + '/../test_helper'
require 'quiz_questions_controller'

# Re-raise errors caught by the controller.
class QuizQuestionsController; def rescue_action(e) raise e end; end

class QuizQuestionsControllerTest < Test::Unit::TestCase
  fixtures :quiz_questions

  def setup
    @controller = QuizQuestionsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:quiz_questions)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_quiz_question
    old_count = QuizQuestion.count
    post :create, :quiz_question => { }
    assert_equal old_count+1, QuizQuestion.count
    
    assert_redirected_to quiz_question_path(assigns(:quiz_question))
  end

  def test_should_show_quiz_question
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_quiz_question
    put :update, :id => 1, :quiz_question => { }
    assert_redirected_to quiz_question_path(assigns(:quiz_question))
  end
  
  def test_should_destroy_quiz_question
    old_count = QuizQuestion.count
    delete :destroy, :id => 1
    assert_equal old_count-1, QuizQuestion.count
    
    assert_redirected_to quiz_questions_path
  end
end
