require File.dirname(__FILE__) + '/../test_helper'
require 'announcements_controller'

# Re-raise errors caught by the controller.
class AnnouncementsController; def rescue_action(e) raise e end; end

class AnnouncementsControllerTest < Test::Unit::TestCase
  fixtures :announcements

  def setup
    @controller = AnnouncementsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:announcements)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_announcement
    old_count = Announcement.count
    post :create, :announcement => { }
    assert_equal old_count+1, Announcement.count
    
    assert_redirected_to announcement_path(assigns(:announcement))
  end

  def test_should_show_announcement
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_announcement
    put :update, :id => 1, :announcement => { }
    assert_redirected_to announcement_path(assigns(:announcement))
  end
  
  def test_should_destroy_announcement
    old_count = Announcement.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Announcement.count
    
    assert_redirected_to announcements_path
  end
end
