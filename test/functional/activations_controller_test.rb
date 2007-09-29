require File.dirname(__FILE__) + '/../test_helper'
require 'activations_controller'

# Re-raise errors caught by the controller.
class ActivationsController; def rescue_action(e) raise e end; end

class ActivationsControllerTest < Test::Unit::TestCase
  fixtures :activations

  def setup
    @controller = ActivationsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
