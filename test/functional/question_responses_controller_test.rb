require File.dirname(__FILE__) + '/../test_helper'
require 'question_responses_controller'

# Re-raise errors caught by the controller.
class QuestionResponsesController; def rescue_action(e) raise e end; end

class QuestionResponsesControllerTest < Test::Unit::TestCase
  fixtures :question_responses

  def setup
    @controller = QuestionResponsesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:question_responses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_question_response
    old_count = QuestionResponse.count
    post :create, :question_response => { }
    assert_equal old_count+1, QuestionResponse.count
    
    assert_redirected_to question_response_path(assigns(:question_response))
  end

  def test_should_show_question_response
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_question_response
    put :update, :id => 1, :question_response => { }
    assert_redirected_to question_response_path(assigns(:question_response))
  end
  
  def test_should_destroy_question_response
    old_count = QuestionResponse.count
    delete :destroy, :id => 1
    assert_equal old_count-1, QuestionResponse.count
    
    assert_redirected_to question_responses_path
  end
end
