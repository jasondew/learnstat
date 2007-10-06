require File.dirname(__FILE__) + '/../../spec_helper'

describe "/announcements/new.html.erb" do
  include AnnouncementsHelper
  
  before do
    assigns[:announcement] = @announcement = mock_model(Announcement)
    assigns[:course] = @course = mock_model(Course)

    @announcement.stub!(:new_record?).and_return(true)
  end

  it "should render new form" do
    stub_actions @announcement, :title => '', :body => ''

    render "/announcements/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", course_announcements_path(@course)) do
    end
  end
end


