require File.dirname(__FILE__) + '/../test_helper'
require 'quizzes_controller'

# Re-raise errors caught by the controller.
class QuizzesController; def rescue_action(e) raise e end; end

class QuizzesControllerTest < Test::Unit::TestCase
  fixtures :quizzes

  def setup
    @controller = QuizzesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:quizzes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_quiz
    old_count = Quiz.count
    post :create, :quiz => { }
    assert_equal old_count+1, Quiz.count
    
    assert_redirected_to quiz_path(assigns(:quiz))
  end

  def test_should_show_quiz
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_quiz
    put :update, :id => 1, :quiz => { }
    assert_redirected_to quiz_path(assigns(:quiz))
  end
  
  def test_should_destroy_quiz
    old_count = Quiz.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Quiz.count
    
    assert_redirected_to quizzes_path
  end
end
