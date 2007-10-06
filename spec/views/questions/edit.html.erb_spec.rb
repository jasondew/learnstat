require File.dirname(__FILE__) + '/../../spec_helper'

describe "/questions/edit.html.erb" do
  include QuestionsHelper
  
  before do
    assigns[:question] = @question = mock_model(Question)
  end

  it "should render edit form" do
    stub_actions @question, :content => '', :answer => '', :chapter => '', :choices => []

    render "/questions/edit.html.erb"
    
    response.body.should_not be_nil
  end
end


