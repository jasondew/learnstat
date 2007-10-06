require File.dirname(__FILE__) + '/../spec_helper'

describe AnnouncementsController, "handling GET /announcements/new" do

  before do
    @announcement = mock_model(Announcement)
    Announcement.stub!(:new).and_return(@announcement)

    @course = mock_model(Course)
    Course.stub!(:find).and_return(@course)

    login_as :instructor
  end
  
  def do_get
    get :new, :course_id => 1
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render new template" do
    do_get
    response.should render_template('new')
  end
  
  it "should create an new announcement" do
    Announcement.should_receive(:new).and_return(@announcement)
    do_get
  end
  
  it "should not save the new announcement" do
    @announcement.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new announcement for the view" do
    do_get
    assigns[:announcement].should equal(@announcement)
  end
end

describe AnnouncementsController, "handling GET /announcements/1/edit" do

  before do
    @announcement = mock_model(Announcement)
    Announcement.stub!(:find).and_return(@announcement)

    @course = mock_model(Course)
    Course.stub!(:find).and_return(@course)

    @announcements = mock_model(Announcement)

    stub_actions @course, :announcements => @announcements
    stub_actions @announcements, :find => @announcement

    login_as :instructor
  end
  
  def do_get
    get :edit, :id => 1, :course_id => 1
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the announcement requested" do
    @announcements.should_receive(:find).and_return(@announcement)
    do_get
  end
  
  it "should assign the found Announcement for the view" do
    do_get
    assigns[:announcement].should equal(@announcement)
  end
end

describe AnnouncementsController, "handling POST /announcements" do

  before(:each) do
    @announcement = mock_model(Announcement, :to_param => "1")
    Announcement.stub!(:new).and_return(@announcement)

    @announcements = mock(Array, :build => @announcement )

    @course = mock_model(Course, :announcements => @announcements)
    Course.stub!(:find).and_return(@course)

    login_as :instructor
  end
  
  def post_with_successful_save
    @announcement.should_receive(:save).and_return(true)
    post :create, :course_id => 1, :announcement => {}
  end
  
  def post_with_failed_save
    @announcement.should_receive(:save).and_return(false)
    post :create, :course_id => 1, :announcement => {}
  end
  
  it "should create a new announcement" do
    @course.should_receive(:announcements).and_return(@announcements)
    @announcements.should_receive(:build).with({'user_id' => 1}).and_return(@announcement)
    post_with_successful_save
  end

  it "should redirect to the new announcement on successful save" do
    @announcements.should_receive(:build).with({'user_id' => 1}).and_return(@announcement)
    post_with_successful_save
    response.should redirect_to(course_path(@course))
  end

  it "should re-render 'new' on failed save" do
    @announcements.should_receive(:build).with({'user_id' => 1}).and_return(@announcement)
    post_with_failed_save
    response.should render_template('new')
  end
end

describe AnnouncementsController, "handling PUT /announcements/1" do

  before(:each) do
    @announcement = mock_model(Announcement, :to_param => "1")
    Announcement.stub!(:find).and_return(@announcement)

    @announcements = mock(Array, :build => @announcement )
    @course = mock_model(Course, :announcements => @announcements)
    Course.stub!(:find).and_return(@course)

    login_as :instructor
  end
  
  def put_with_successful_update
    @announcement.should_receive(:update_attributes).and_return(true)
    put :update, :course_id => 1, :id => "1"
  end
  
  def put_with_failed_update
    @announcement.should_receive(:update_attributes).and_return(false)
    put :update, :course_id => 1, :id => "1"
  end
  
  it "should find the announcement requested" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    put_with_successful_update
  end

  it "should update the found announcement" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    put_with_successful_update
    assigns(:announcement).should equal(@announcement)
  end

  it "should assign the found announcement for the view" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    put_with_successful_update
    assigns(:announcement).should equal(@announcement)
  end

  it "should redirect to the announcement on successful update" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    put_with_successful_update
    response.should redirect_to(course_path(@course))
  end

  it "should re-render 'edit' on failed update" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe AnnouncementsController, "handling DELETE /announcements/1" do

  before(:each) do
    @announcement = mock_model(Announcement, :destroy => true)
    Announcement.stub!(:find).and_return(@announcement)

    @announcements = mock(Array, :build => @announcement )
    @course = mock_model(Course, :announcements => @announcements)
    Course.stub!(:find).and_return(@course)

    login_as :instructor
  end
  
  def do_delete
    delete :destroy, :course_id => 1, :id => "1"
  end

  it "should find the announcement requested" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    do_delete
  end
  
  it "should call destroy on the found announcement" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    @announcement.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the announcements list" do
    @announcements.should_receive(:find).with("1").and_return(@announcement)
    do_delete
    response.should redirect_to(course_path(@course))
  end
end
