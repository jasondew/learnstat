require File.dirname(__FILE__) + '/../../spec_helper'

describe "/announcements/edit.html.erb" do
  include AnnouncementsHelper
  
  before do
    assigns[:announcement] = @announcement = mock_model(Announcement)
    assigns[:course] = @course = mock_model(Course)
  end

  it "should render edit form" do
    stub_actions @announcement, :title => '', :body => ''

    render "/announcements/edit.html.erb"
    
    response.should have_tag("form[action=#{course_announcement_path(@course, @announcement)}][method=post]") do
    end
  end
end


