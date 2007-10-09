require File.dirname(__FILE__) + '/../../spec_helper'

describe "/question_choices/new.html.erb" do
  include QuestionChoicesHelper
  
  before do
    assigns[:question] = @question = mock_model(Question)
    assigns[:question_choice] = @question_choice = mock_model(QuestionChoice, :new_record? => true, :content => '')
  end

  it "should render new form" do
    render "/question_choices/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", question_question_choices_path(@question)) do
    end
  end
end


