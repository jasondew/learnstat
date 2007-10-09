require File.dirname(__FILE__) + '/../../spec_helper'

describe "/question_choices/edit.html.erb" do
  include QuestionChoicesHelper
  
  before do
    assigns[:question] = @question = mock_model(Question)
    assigns[:question_choice] = @question_choice = mock_model(QuestionChoice, :new_record? => true, :content => '')
  end

  it "should render edit form" do
    render "/question_choices/edit.html.erb"
    
    response.should have_tag("form[action=#{question_question_choice_path(@question, @question_choice)}][method=post]") do
    end
  end
end


