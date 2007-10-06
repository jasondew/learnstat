require File.dirname(__FILE__) + '/../../spec_helper'

describe "/questions/show.html.erb" do
  include QuestionsHelper
  
  before do
    assigns[:question] = @question = mock_model(Question)
  end

  it "should render attributes in <p>" do
    stub_actions @question, :content => '', :answer => '', :chapter => '', :choices => []

    render "/questions/show.html.erb"
  end
end

