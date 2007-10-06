require File.dirname(__FILE__) + '/../../spec_helper'

describe "/questions/index.html.erb" do
  include QuestionsHelper
  
  before do
    question_98 = mock_model(Question)
    question_99 = mock_model(Question)

    assigns[:questions] = [question_98, question_99]
  end

  it "should render list of questions" do
    render "/questions/index.html.erb"
  end
end

