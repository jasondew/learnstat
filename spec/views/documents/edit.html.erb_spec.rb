require File.dirname(__FILE__) + '/../../spec_helper'

describe "/documents/edit.html.erb" do
  include DocumentsHelper
  
  before do
    assigns[:document] = @document = mock_model(Document)
    assigns[:course] = @course = mock_model(Course)
  end

  it "should render edit form" do
    stub_actions @document, :label => 'some label', :viewable_at => 3.days.ago

    render "/documents/edit.html.erb"
    
    response.should have_tag("form[action=#{course_document_path(@course, @document)}][method=post]") do
    end
  end
end


