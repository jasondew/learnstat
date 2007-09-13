require File.dirname(__FILE__) + '/../test_helper'
require 'question_controller'

# Re-raise errors caught by the controller.
class QuestionController; def rescue_action(e) raise e end; end

class QuestionControllerTest < Test::Unit::TestCase
  def setup
    @controller = QuestionController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
