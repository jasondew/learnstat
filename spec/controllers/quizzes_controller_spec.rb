require File.dirname(__FILE__) + '/../spec_helper'

describe "CourseDerivative", :shared => true do
  before do
    @quiz = mock_model(Quiz)
    @quizzes = mock(Array)
    @course = mock_model(Course)

    Course.stub!(:find).and_return(@course)

    @course.stub!(:quizzes).and_return(@quizzes)
    @quizzes.stub!(:find).and_return(@quiz)
    @quizzes.stub!(:to_xml).and_return("XML")

    login_as :instructor
  end
end

describe QuizzesController, "#route_for" do

  it "should map { :controller => 'quizzes', :action => 'index', :course_id => '1' } to /courses/1/quizzes" do
    route_for(:controller => "quizzes", :action => "index", :course_id => '1').should == "/courses/1/quizzes"
  end
  
  it "should map { :controller => 'quizzes', :action => 'new', :course_id => '1' } to /courses/1/quizzes/new" do
    route_for(:controller => "quizzes", :action => "new", :course_id => '1').should == "/courses/1/quizzes/new"
  end
  
  it "should map { :controller => 'quizzes', :action => 'show', :course_id => '1', :id => 1 } to /courses/1/quizzes/1" do
    route_for(:controller => "quizzes", :action => "show", :course_id => '1', :id => 1).should == "/courses/1/quizzes/1"
  end
  
  it "should map { :controller => 'quizzes', :action => 'edit', :course_id => '1', :id => 1 } to /courses/1/quizzes/1/edit" do
    route_for(:controller => "quizzes", :action => "edit", :course_id => '1', :id => 1).should == "/courses/1/quizzes/1/edit"
  end
  
  it "should map { :controller => 'quizzes', :action => 'update', :course_id => '1', :id => 1} to /courses/1/quizzes/1" do
    route_for(:controller => "quizzes", :action => "update", :course_id => '1', :id => 1).should == "/courses/1/quizzes/1"
  end
  
  it "should map { :controller => 'quizzes', :action => 'destroy', :course_id => '1', :id => 1} to /courses/1/quizzes/1" do
    route_for(:controller => "quizzes", :action => "destroy", :course_id => '1', :id => 1).should == "/courses/1/quizzes/1"
  end
  
end

describe QuizzesController, "#params_from" do

  it "should generate params { :controller => 'quizzes', action => 'index', :course_id => '1' } from GET /courses/1/quizzes" do
    params_from(:get, "/courses/1/quizzes").should == {:controller => "quizzes", :action => "index", :course_id => '1'}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'new', :course_id => '1' } from GET /courses/1/quizzes/new" do
    params_from(:get, "/courses/1/quizzes/new").should == {:controller => "quizzes", :action => "new", :course_id => '1'}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'create', :course_id => '1' } from POST /courses/1/quizzes" do
    params_from(:post, "/courses/1/quizzes").should == {:controller => "quizzes", :action => "create", :course_id => '1'}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'show', :course_id => '1', id => '1' } from GET /courses/1/quizzes/1" do
    params_from(:get, "/courses/1/quizzes/1").should == {:controller => "quizzes", :action => "show", :course_id => '1', :id => "1"}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'edit', :course_id => '1', id => '1' } from GET /courses/1/quizzes/1;edit" do
    params_from(:get, "/courses/1/quizzes/1/edit").should == {:controller => "quizzes", :action => "edit", :course_id => '1', :id => "1"}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'update', :course_id => '1', id => '1' } from PUT /courses/1/quizzes/1" do
    params_from(:put, "/courses/1/quizzes/1").should == {:controller => "quizzes", :action => "update", :course_id => '1', :id => "1"}
  end
  
  it "should generate params { :controller => 'quizzes', action => 'destroy', :course_id => '1', id => '1' } from DELETE /courses/1/quizzes/1" do
    params_from(:delete, "/courses/1/quizzes/1").should == {:controller => "quizzes", :action => "destroy", :course_id => '1', :id => "1"}
  end
  
end

describe QuizzesController, "handling GET /quizzes.xml" do

  it_should_behave_like "CourseDerivative"

  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :index, :course_id => 1
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should find all quizzes" do
    @course.should_receive(:quizzes).and_return(@quizzes)
    @quizzes.should_receive(:to_xml).and_return("XML")
    do_get
  end
  
  it "should render the found quizzes as xml" do
    do_get
    response.body.should == "XML"
  end
end

describe QuizzesController, "handling GET /quizzes/1" do

  it_should_behave_like "CourseDerivative"

  before do
    @audit.stub!(:create)
    @current_user = mock_model(User, :audits => @audit)
    @question_responses = mock_model(Array)

    @current_user.stub!(:question_responses).and_return(@question_responses)
    @question_responses.stub!(:find_all_by_quiz_id)
    controller.stub!(:current_user).and_return(@current_user)
  end

  def do_get
    get :show, :course_id => 1, :id => 1
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render show template" do
    do_get
    response.should render_template('show')
  end
  
  it "should find the quiz requested" do
    Course.should_receive(:find).and_return(@course)

    @course.should_receive(:quizzes).and_return(@quizzes)
    @quizzes.should_receive(:find).and_return(@quiz)

    @current_user.should_receive(:question_responses).and_return(@question_responses)
    @question_responses.should_receive(:find_all_by_quiz_id).and_return(@question_responses)

    do_get
  end
  
end

describe QuizzesController, "handling GET /quizzes/1.xml" do

  it_should_behave_like "CourseDerivative"

  before do
    @audit.stub!(:create)
    @current_user = mock_model(User, :audits => @audit)
    @question_responses = mock_model(Array)

    @current_user.stub!(:question_responses).and_return(@question_responses)
    @question_responses.stub!(:find_all_by_quiz_id)
    controller.stub!(:current_user).and_return(@current_user)

    @quiz.stub!(:to_xml)
  end

  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :show, :course_id => 1, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should find the quiz requested" do
    Course.should_receive(:find).and_return(@course)

    @course.should_receive(:quizzes).and_return(@quizzes)
    @quizzes.should_receive(:find).and_return(@quiz)

    @current_user.should_receive(:question_responses).and_return(@question_responses)
    @question_responses.should_receive(:find_all_by_quiz_id).and_return(@question_responses)

    do_get
  end
  
  it "should render the found quiz as xml" do
    @quiz.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe QuizzesController, "handling GET /quizzes/new" do

  it_should_behave_like "CourseDerivative"

  before do
    Quiz.stub!(:new).and_return(@quiz)
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
  
  it "should create an new quiz" do
    Quiz.should_receive(:new).and_return(@quiz)
    do_get
  end
  
  it "should not save the new quiz" do
    @quiz.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new quiz for the view" do
    do_get
    assigns[:quiz].should equal(@quiz)
  end
end

describe QuizzesController, "handling GET /quizzes/1/edit" do

  it_should_behave_like "CourseDerivative"
  
  def do_get
    get :edit, :course_id => 1, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the quiz requested" do
    do_get
  end
  
  it "should assign the found Quiz for the view" do
    do_get
    assigns[:quiz].should equal(@quiz)
  end
end

describe QuizzesController, "handling POST /quizzes" do

  it_should_behave_like "CourseDerivative"

  before do
    @quizzes.stub!(:build).and_return(@quiz)
  end
  
  def post_with_successful_save
    @quiz.should_receive(:save).and_return(true)
    post :create, :course_id => 1, :quiz => {}
  end
  
  def post_with_failed_save
    @quiz.should_receive(:save).and_return(false)
    post :create, :course_id => 1, :quiz => {}
  end
  
  it "should create a new quiz" do
    @course.should_receive(:quizzes).and_return(@quizzes)
    @quizzes.should_receive(:build).with({}).and_return(@quiz)
    post_with_successful_save
  end

  it "should redirect to the new quiz on successful save" do
    post_with_successful_save
    response.should redirect_to(course_path(@course))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe QuizzesController, "handling PUT /quizzes/1" do

  it_should_behave_like "CourseDerivative"
  
  def put_with_successful_update
    @quiz.should_receive(:update_attributes).and_return(true)
    put :update, :course_id => 1, :id => "1"
  end
  
  def put_with_failed_update
    @quiz.should_receive(:update_attributes).and_return(false)
    put :update, :course_id => 1, :id => "1"
  end
  
  it "should find the quiz requested" do
    put_with_successful_update
  end

  it "should update the found quiz" do
    put_with_successful_update
    assigns(:quiz).should equal(@quiz)
  end

  it "should assign the found quiz for the view" do
    put_with_successful_update
    assigns(:quiz).should equal(@quiz)
  end

  it "should redirect to the quiz on successful update" do
    put_with_successful_update
    response.should redirect_to(course_path(@course))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe QuizzesController, "handling DELETE /quizzes/1" do

  it_should_behave_like "CourseDerivative"

  before do
    @quiz.stub!(:destroy)
  end
  
  def do_delete
    delete :destroy, :course_id => 1, :id => "1"
  end

  it "should find the quiz requested" do
    do_delete
  end
  
  it "should call destroy on the found quiz" do
    @quiz.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the quizzes list" do
    do_delete
    response.should redirect_to(course_path(@course))
  end
end
