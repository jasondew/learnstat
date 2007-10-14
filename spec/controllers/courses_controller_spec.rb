require File.dirname(__FILE__) + '/../spec_helper'

describe "CourseCommons", :shared => true do

  before do
    @course = mock_model(Course)
    Course.stub!(:find).and_return(@course)
    Course.stub!(:new).and_return(@course)

    @student = mock_model(User)
    @quiz = mock_model(Quiz, :grade_for => 0.5)
    @exam = mock_model(Exam)

    @students = mock(Array)
    @quizzes = mock(Array)

    @students.stub!(:each).and_return(@student)
    @quizzes.stub!(:each).and_return(@quiz)

    @gradeables = [@quiz,@exam]

    @course.stub!(:students).and_return(@students)
    @course.stub!(:quizzes).and_return(@quizzes)
    @course.stub!(:gradeables).and_return(@gradeables)
    @course.stub!(:destroy)

    login_as :instructor
  end

end

describe "Access control" do
  controller_name :courses

  it "should send you to the login screen if not authorized" do
    get :show, :id => 1
    response.should redirect_to( '/session/new' )
  end

end

describe CoursesController, "#route_for" do

  it "should map { :controller => 'courses', :action => 'index' } to /courses" do
    route_for(:controller => "courses", :action => "index").should == "/courses"
  end
  
  it "should map { :controller => 'courses', :action => 'new' } to /courses/new" do
    route_for(:controller => "courses", :action => "new").should == "/courses/new"
  end
  
  it "should map { :controller => 'courses', :action => 'show', :id => 1 } to /courses/1" do
    route_for(:controller => "courses", :action => "show", :id => 1).should == "/courses/1"
  end
  
  it "should map { :controller => 'courses', :action => 'edit', :id => 1 } to /courses/1/edit" do
    route_for(:controller => "courses", :action => "edit", :id => 1).should == "/courses/1/edit"
  end
  
  it "should map { :controller => 'courses', :action => 'update', :id => 1} to /courses/1" do
    route_for(:controller => "courses", :action => "update", :id => 1).should == "/courses/1"
  end
  
  it "should map { :controller => 'courses', :action => 'destroy', :id => 1} to /courses/1" do
    route_for(:controller => "courses", :action => "destroy", :id => 1).should == "/courses/1"
  end
  
end

describe CoursesController, "#params_from" do

  it "should generate params { :controller => 'courses', action => 'index' } from GET /courses" do
    params_from(:get, "/courses").should == {:controller => "courses", :action => "index"}
  end
  
  it "should generate params { :controller => 'courses', action => 'new' } from GET /courses/new" do
    params_from(:get, "/courses/new").should == {:controller => "courses", :action => "new"}
  end
  
  it "should generate params { :controller => 'courses', action => 'create' } from POST /courses" do
    params_from(:post, "/courses").should == {:controller => "courses", :action => "create"}
  end
  
  it "should generate params { :controller => 'courses', action => 'show', id => '1' } from GET /courses/1" do
    params_from(:get, "/courses/1").should == {:controller => "courses", :action => "show", :id => "1"}
  end
  
  it "should generate params { :controller => 'courses', action => 'edit', id => '1' } from GET /courses/1;edit" do
    params_from(:get, "/courses/1/edit").should == {:controller => "courses", :action => "edit", :id => "1"}
  end
  
  it "should generate params { :controller => 'courses', action => 'update', id => '1' } from PUT /courses/1" do
    params_from(:put, "/courses/1").should == {:controller => "courses", :action => "update", :id => "1"}
  end
  
  it "should generate params { :controller => 'courses', action => 'destroy', id => '1' } from DELETE /courses/1" do
    params_from(:delete, "/courses/1").should == {:controller => "courses", :action => "destroy", :id => "1"}
  end
  
end

describe CoursesController, "handling GET /courses" do

  it_should_behave_like 'CourseCommons'

  def do_get
    get :index
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should render index template" do
    do_get
    response.should render_template('index')
  end
  
  it "should find all courses" do
    Course.should_receive(:find).with(:all).and_return([@course])
    do_get
  end
  
  it "should assign the found courses for the view" do
    do_get
    assigns[:courses].should == @course
  end
end

describe CoursesController, "handling GET /courses/1" do

  it_should_behave_like 'CourseCommons'
  
  def do_get
    get :show, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render show template" do
    do_get
    response.should render_template('show')
  end
  
  it "should find the course requested" do
    Course.should_receive(:find).with("1").and_return(@course)
    do_get
  end
  
  it "should assign the found course for the view" do
    do_get
    assigns[:course].should equal(@course)
  end

end

describe CoursesController, "calculating the gradebook" do

  before do
    @course = mock_model(Course)
    Course.stub!(:find).and_return(@course)
    Course.stub!(:new).and_return(@course)

    @student = mock_model(User)
    @quiz = mock_model(Quiz, :name => 'quiz', :grade_for => 0.5)
    @exam = mock_model(Exam, :name => 'exam', :grade_for => 0.8)

    @students = [@student]
    @gradeables = [@quiz,@exam]
    @quizzes = [@quiz]

    login_as :instructor
  end

  it "should calculate correctly" do
    @course.should_receive(:students).and_return(@students)
    @course.should_receive(:gradeables).and_return(@gradeables)
    @course.should_receive(:quizzes).and_return(@quizzes)
    get :show, :id => 1
  end
end

describe CoursesController, "handling GET /courses/new" do

  it_should_behave_like 'CourseCommons'
  
  def do_get
    get :new
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render new template" do
    do_get
    response.should render_template('new')
  end
  
  it "should create an new course" do
    Course.should_receive(:new).and_return(@course)
    do_get
  end
  
  it "should not save the new course" do
    @course.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new course for the view" do
    do_get
    assigns[:course].should equal(@course)
  end
end

describe CoursesController, "handling GET /courses/1/edit" do

  it_should_behave_like 'CourseCommons'
  
  def do_get
    get :edit, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the course requested" do
    Course.should_receive(:find).and_return(@course)
    do_get
  end
  
  it "should assign the found Course for the view" do
    do_get
    assigns[:course].should equal(@course)
  end
end

describe CoursesController, "handling POST /courses" do

  it_should_behave_like 'CourseCommons'

  def post_with_successful_save
    @course.should_receive(:[]=).with('user_id', 1).and_return(@course)
    @course.should_receive(:save).and_return(true)
    post :create, :course => {}
  end
  
  def post_with_failed_save
    @course.should_receive(:[]=).with('user_id', 1).and_return(@course)
    @course.should_receive(:save).and_return(false)
    post :create, :course => {}
  end
  
  it "should create a new course" do
    Course.should_receive(:new).with({}).and_return(@course)
    post_with_successful_save
  end

  it "should redirect to the new course on successful save" do
    post_with_successful_save
    response.should redirect_to(course_url(@course))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe CoursesController, "handling PUT /courses/1" do
  
  it_should_behave_like 'CourseCommons'

  def put_with_successful_update
    @course.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1"
  end
  
  def put_with_failed_update
    @course.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1"
  end
  
  it "should find the course requested" do
    Course.should_receive(:find).with("1").and_return(@course)
    put_with_successful_update
  end

  it "should update the found course" do
    put_with_successful_update
    assigns(:course).should equal(@course)
  end

  it "should assign the found course for the view" do
    put_with_successful_update
    assigns(:course).should equal(@course)
  end

  it "should redirect to the course on successful update" do
    put_with_successful_update
    response.should redirect_to(course_url(@course))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe CoursesController, "handling DELETE /courses/1" do
  
  it_should_behave_like 'CourseCommons'

  def do_delete
    delete :destroy, :id => "1"
  end

  it "should find the course requested" do
    Course.should_receive(:find).with("1").and_return(@course)
    do_delete
  end
  
  it "should call destroy on the found course" do
    @course.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the courses list" do
    do_delete
    response.should redirect_to(courses_url)
  end
end
