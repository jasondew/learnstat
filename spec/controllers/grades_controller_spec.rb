require File.dirname(__FILE__) + '/../spec_helper'

describe GradesController, "#route_for" do

  it "should map { :controller => 'grades', :action => 'index' } to /users/2/courses/1/grades" do
    route_for(:controller => "grades", :action => "index", :course_id => 1, :user_id => 2).should == "/users/2/courses/1/grades"
  end
  
  it "should map { :controller => 'grades', :action => 'new' } to /users/2/courses/1/grades/new" do
    route_for(:controller => "grades", :action => "new", :course_id => 1, :user_id => 2).should == "/users/2/courses/1/grades/new"
  end
  
  it "should map { :controller => 'grades', :action => 'show', :id => 1 } to /users/2/courses/1/grades/1" do
    route_for(:controller => "grades", :action => "show", :course_id => 1, :user_id => 2, :id => 1).should == "/users/2/courses/1/grades/1"
  end
  
  it "should map { :controller => 'grades', :action => 'edit', :id => 1 } to /users/2/courses/1/grades/1/edit" do
    route_for(:controller => "grades", :action => "edit", :course_id => 1, :user_id => 2, :id => 1).should == "/users/2/courses/1/grades/1/edit"
  end
  
  it "should map { :controller => 'grades', :action => 'update', :id => 1} to /users/2/courses/1/grades/1" do
    route_for(:controller => "grades", :action => "update", :course_id => 1, :user_id => 2, :id => 1).should == "/users/2/courses/1/grades/1"
  end
  
  it "should map { :controller => 'grades', :action => 'destroy', :id => 1} to /users/2/courses/1/grades/1" do
    route_for(:controller => "grades", :action => "destroy", :course_id => 1, :user_id => 2, :id => 1).should == "/users/2/courses/1/grades/1"
  end
  
end

describe GradesController, "#params_from" do

  it "should generate params { :controller => 'grades', action => 'index' } from GET /users/2/courses/1/grades" do
    params_from(:get, "/users/2/courses/1/grades").should == {:controller => "grades", :action => "index", :course_id => "1", :user_id => "2"}
  end
  
  it "should generate params { :controller => 'grades', action => 'new' } from GET /users/2/courses/1/grades/new" do
    params_from(:get, "/users/2/courses/1/grades/new").should == {:controller => "grades", :action => "new", :course_id => "1", :user_id => "2"}
  end
  
  it "should generate params { :controller => 'grades', action => 'create' } from POST /users/2/courses/1/grades" do
    params_from(:post, "/users/2/courses/1/grades").should == {:controller => "grades", :action => "create", :course_id => "1", :user_id => "2"}
  end
  
  it "should generate params { :controller => 'grades', action => 'show', id => '1' } from GET /users/2/courses/1/grades/1" do
    params_from(:get, "/users/2/courses/1/grades/1").should == {:controller => "grades", :action => "show", :course_id => "1", :user_id => "2", :id => "1"}
  end
  
  it "should generate params { :controller => 'grades', action => 'edit', id => '1' } from GET /users/2/courses/1/grades/1;edit" do
    params_from(:get, "/users/2/courses/1/grades/1/edit").should == {:controller => "grades", :action => "edit", :course_id => "1", :user_id => "2", :id => "1"}
  end
  
  it "should generate params { :controller => 'grades', action => 'update', id => '1' } from PUT /users/2/courses/1/grades/1" do
    params_from(:put, "/users/2/courses/1/grades/1").should == {:controller => "grades", :action => "update", :course_id => "1", :user_id => "2", :id => "1"}
  end
  
  it "should generate params { :controller => 'grades', action => 'destroy', id => '1' } from DELETE /users/2/courses/1/grades/1" do
    params_from(:delete, "/users/2/courses/1/grades/1").should == {:controller => "grades", :action => "destroy", :course_id => "1", :user_id => "2", :id => "1"}
  end
  
end

describe GradesController, "handling GET /users/2/courses/1/grades" do

  before do
    @grade = mock_model(Grade)
    Grade.stub!(:find).and_return([@grade])

    login_as :instructor
  end
  
  def do_get
    get :index, :course_id => 1, :user_id => 2
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should render index template" do
    do_get
    response.should render_template('index')
  end
  
  it "should find all grades" do
    Grade.should_receive(:find).with(:all).and_return([@grade])
    do_get
  end
  
  it "should assign the found grades for the view" do
    do_get
    assigns[:grades].should == [@grade]
  end
end

describe GradesController, "handling GET /users/2/courses/1/grades.xml" do

  before do
    @grade = mock_model(Grade, :to_xml => "XML")
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :index, :course_id => 1, :user_id => 2
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should find all grades" do
    Grade.should_receive(:find).with(:all).and_return([@grade])
    do_get
  end
  
  it "should render the found grades as xml" do
    @grade.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe GradesController, "handling GET /users/2/courses/1/grades/1" do

  before do
    @grade = mock_model(Grade)
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def do_get
    get :show, :id => "1", :course_id => 1, :user_id => 2
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render show template" do
    do_get
    response.should render_template('show')
  end
  
  it "should find the grade requested" do
    Grade.should_receive(:find).with("1").and_return(@grade)
    do_get
  end
  
  it "should assign the found grade for the view" do
    do_get
    assigns[:grade].should equal(@grade)
  end
end

describe GradesController, "handling GET /users/2/courses/1/grades/1.xml" do

  before do
    @grade = mock_model(Grade, :to_xml => "XML")
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :show, :id => "1", :course_id => 1, :user_id => 2
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should find the grade requested" do
    Grade.should_receive(:find).with("1").and_return(@grade)
    do_get
  end
  
  it "should render the found grade as xml" do
    @grade.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe GradesController, "handling GET /users/2/courses/1/grades/new" do

  before do
    @grade = mock_model(Grade)
    Grade.stub!(:new).and_return(@grade)

    login_as :instructor
  end
  
  def do_get
    get :new, :course_id => 1, :user_id => 2
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render new template" do
    do_get
    response.should render_template('new')
  end
  
  it "should create an new grade" do
    Grade.should_receive(:new).and_return(@grade)
    do_get
  end
  
  it "should not save the new grade" do
    @grade.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new grade for the view" do
    do_get
    assigns[:grade].should equal(@grade)
  end
end

describe GradesController, "handling GET /users/2/courses/1/grades/1/edit" do

  before do
    @grade = mock_model(Grade)
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def do_get
    get :edit, :id => "1", :course_id => 1, :user_id => 2
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the grade requested" do
    Grade.should_receive(:find).and_return(@grade)
    do_get
  end
  
  it "should assign the found Grade for the view" do
    do_get
    assigns[:grade].should equal(@grade)
  end
end

describe GradesController, "handling POST /users/2/courses/1/grades" do

  before do
    @grade = mock_model(Grade, :to_param => "1")
    Grade.stub!(:new).and_return(@grade)

    login_as :instructor
  end
  
  def post_with_successful_save
    @grade.should_receive(:save).and_return(true)
    post :create, :grade => {}, :course_id => 1, :user_id => 2
  end
  
  def post_with_failed_save
    @grade.should_receive(:save).and_return(false)
    post :create, :grade => {}, :course_id => 1, :user_id => 2
  end
  
  it "should create a new grade" do
    Grade.should_receive(:new).with({}).and_return(@grade)
    post_with_successful_save
  end

  it "should redirect to the new grade on successful save" do
    post_with_successful_save
    response.should redirect_to(course_path(1))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe GradesController, "handling PUT /users/2/courses/1/grades/1" do

  before do
    @grade = mock_model(Grade, :to_param => "1")
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def put_with_successful_update
    @grade.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1", :course_id => 1, :user_id => 2
  end
  
  def put_with_failed_update
    @grade.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1", :course_id => 1, :user_id => 2
  end
  
  it "should find the grade requested" do
    Grade.should_receive(:find).with("1").and_return(@grade)
    put_with_successful_update
  end

  it "should update the found grade" do
    put_with_successful_update
    assigns(:grade).should equal(@grade)
  end

  it "should assign the found grade for the view" do
    put_with_successful_update
    assigns(:grade).should equal(@grade)
  end

  it "should redirect to the grade on successful update" do
    put_with_successful_update
    response.should redirect_to(course_path(1))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe GradesController, "handling DELETE /users/2/courses/1/grades/1" do

  before do
    @grade = mock_model(Grade, :destroy => true)
    Grade.stub!(:find).and_return(@grade)

    login_as :instructor
  end
  
  def do_delete
    delete :destroy, :id => "1", :course_id => 1, :user_id => 2
  end

  it "should find the grade requested" do
    Grade.should_receive(:find).with("1").and_return(@grade)
    do_delete
  end
  
  it "should call destroy on the found grade" do
    @grade.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the grades list" do
    do_delete
    response.should redirect_to(user_course_grades_url(1,1))
  end
end
