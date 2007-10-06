require File.dirname(__FILE__) + '/../../spec_helper'

describe "/documents/new.html.erb" do
  include DocumentsHelper
  
  before do
    assigns[:document] = @document = mock_model(Document)
    assigns[:course] = @course = mock_model(Course)

    @document.stub!(:new_record?).and_return(true)
  end

  it "should render new form" do
    stub_actions @document, :label => 'some label', :uploaded_data => 'asdf', :viewable_at => Time.now

    render "/documents/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", course_documents_path(@course)) do
    end
  end
end


