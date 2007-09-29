require File.dirname(__FILE__) + '/../test_helper'
require 'grades_controller'

# Re-raise errors caught by the controller.
class GradesController; def rescue_action(e) raise e end; end

class GradesControllerTest < Test::Unit::TestCase
  fixtures :grades

  def setup
    @controller = GradesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:grades)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_grade
    old_count = Grade.count
    post :create, :grade => { }
    assert_equal old_count+1, Grade.count
    
    assert_redirected_to grade_path(assigns(:grade))
  end

  def test_should_show_grade
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_grade
    put :update, :id => 1, :grade => { }
    assert_redirected_to grade_path(assigns(:grade))
  end
  
  def test_should_destroy_grade
    old_count = Grade.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Grade.count
    
    assert_redirected_to grades_path
  end
end
