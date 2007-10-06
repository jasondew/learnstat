require File.dirname(__FILE__) + '/../../spec_helper'

describe "/questions/new.html.erb" do
  include QuestionsHelper
  
  before do
    @question = mock_model(Question)
    @question.stub!(:new_record?).and_return(true)
    assigns[:question] = @question
  end

  it "should render new form" do
    render "/questions/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", questions_path) do
    end
  end
end


