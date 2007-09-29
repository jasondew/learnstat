require File.dirname(__FILE__) + '/../test_helper'
require 'question_choices_controller'

# Re-raise errors caught by the controller.
class QuestionChoicesController; def rescue_action(e) raise e end; end

class QuestionChoicesControllerTest < Test::Unit::TestCase
  fixtures :question_choices

  def setup
    @controller = QuestionChoicesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:question_choices)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_question_choice
    old_count = QuestionChoice.count
    post :create, :question_choice => { }
    assert_equal old_count+1, QuestionChoice.count
    
    assert_redirected_to question_choice_path(assigns(:question_choice))
  end

  def test_should_show_question_choice
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_question_choice
    put :update, :id => 1, :question_choice => { }
    assert_redirected_to question_choice_path(assigns(:question_choice))
  end
  
  def test_should_destroy_question_choice
    old_count = QuestionChoice.count
    delete :destroy, :id => 1
    assert_equal old_count-1, QuestionChoice.count
    
    assert_redirected_to question_choices_path
  end
end
