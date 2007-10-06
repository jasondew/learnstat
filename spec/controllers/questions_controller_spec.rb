require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionsController, "#route_for" do

  it "should map { :controller => 'questions', :action => 'index' } to /questions" do
    route_for(:controller => "questions", :action => "index").should == "/questions"
  end
  
  it "should map { :controller => 'questions', :action => 'new' } to /questions/new" do
    route_for(:controller => "questions", :action => "new").should == "/questions/new"
  end
  
  it "should map { :controller => 'questions', :action => 'show', :id => 1 } to /questions/1" do
    route_for(:controller => "questions", :action => "show", :id => 1).should == "/questions/1"
  end
  
  it "should map { :controller => 'questions', :action => 'edit', :id => 1 } to /questions/1/edit" do
    route_for(:controller => "questions", :action => "edit", :id => 1).should == "/questions/1/edit"
  end
  
  it "should map { :controller => 'questions', :action => 'update', :id => 1} to /questions/1" do
    route_for(:controller => "questions", :action => "update", :id => 1).should == "/questions/1"
  end
  
  it "should map { :controller => 'questions', :action => 'destroy', :id => 1} to /questions/1" do
    route_for(:controller => "questions", :action => "destroy", :id => 1).should == "/questions/1"
  end
  
end

describe QuestionsController, "#params_from" do

  it "should generate params { :controller => 'questions', action => 'index' } from GET /questions" do
    params_from(:get, "/questions").should == {:controller => "questions", :action => "index"}
  end
  
  it "should generate params { :controller => 'questions', action => 'new' } from GET /questions/new" do
    params_from(:get, "/questions/new").should == {:controller => "questions", :action => "new"}
  end
  
  it "should generate params { :controller => 'questions', action => 'create' } from POST /questions" do
    params_from(:post, "/questions").should == {:controller => "questions", :action => "create"}
  end
  
  it "should generate params { :controller => 'questions', action => 'show', id => '1' } from GET /questions/1" do
    params_from(:get, "/questions/1").should == {:controller => "questions", :action => "show", :id => "1"}
  end
  
  it "should generate params { :controller => 'questions', action => 'edit', id => '1' } from GET /questions/1;edit" do
    params_from(:get, "/questions/1/edit").should == {:controller => "questions", :action => "edit", :id => "1"}
  end
  
  it "should generate params { :controller => 'questions', action => 'update', id => '1' } from PUT /questions/1" do
    params_from(:put, "/questions/1").should == {:controller => "questions", :action => "update", :id => "1"}
  end
  
  it "should generate params { :controller => 'questions', action => 'destroy', id => '1' } from DELETE /questions/1" do
    params_from(:delete, "/questions/1").should == {:controller => "questions", :action => "destroy", :id => "1"}
  end
  
end

describe QuestionsController, "handling GET /questions" do

  before do
    @question = mock_model(Question)
    Question.stub!(:find).and_return([@question])

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
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
  
  it "should find all questions" do
    Question.should_receive(:find).with(:all).and_return([@question])
    do_get
  end
  
  it "should assign the found questions for the view" do
    do_get
    assigns[:questions].should == [@question]
  end
end

describe QuestionsController, "handling GET /questions.xml" do

  before do
    @question = mock_model(Question, :to_xml => "XML")
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :index
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should find all questions" do
    Question.should_receive(:find).with(:all).and_return([@question])
    do_get
  end
  
  it "should render the found questions as xml" do
    @question.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe QuestionsController, "handling GET /questions/1" do

  before do
    @question = mock_model(Question)
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
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
  
  it "should find the question requested" do
    Question.should_receive(:find).with("1").and_return(@question)
    do_get
  end
  
  it "should assign the found question for the view" do
    do_get
    assigns[:question].should equal(@question)
  end
end

describe QuestionsController, "handling GET /questions/1.xml" do

  before do
    @question = mock_model(Question, :to_xml => "XML")
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :show, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should find the question requested" do
    Question.should_receive(:find).with("1").and_return(@question)
    do_get
  end
  
  it "should render the found question as xml" do
    @question.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe QuestionsController, "handling GET /questions/new" do

  before do
    @question = mock_model(Question)
    Question.stub!(:new).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
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
  
  it "should create an new question" do
    Question.should_receive(:new).and_return(@question)
    do_get
  end
  
  it "should not save the new question" do
    @question.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new question for the view" do
    do_get
    assigns[:question].should equal(@question)
  end
end

describe QuestionsController, "handling GET /questions/1/edit" do

  before do
    @question = mock_model(Question)
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
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
  
  it "should find the question requested" do
    Question.should_receive(:find).and_return(@question)
    do_get
  end
  
  it "should assign the found Question for the view" do
    do_get
    assigns[:question].should equal(@question)
  end
end

describe QuestionsController, "handling POST /questions" do

  before do
    @question = mock_model(Question, :to_param => "1")
    Question.stub!(:new).and_return(@question)

    login_as :instructor
  end
  
  def post_with_successful_save
    @question.should_receive(:save).and_return(true)
    post :create, :question => {}
  end
  
  def post_with_failed_save
    @question.should_receive(:save).and_return(false)
    post :create, :question => {}
  end
  
  it "should create a new question" do
    Question.should_receive(:new).with({}).and_return(@question)
    post_with_successful_save
  end

  it "should redirect to the new question on successful save" do
    post_with_successful_save
    response.should be_redirect
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe QuestionsController, "handling PUT /questions/1" do

  before do
    @question = mock_model(Question, :to_param => "1")
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
  def put_with_successful_update
    @question.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1"
  end
  
  def put_with_failed_update
    @question.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1"
  end
  
  it "should find the question requested" do
    Question.should_receive(:find).with("1").and_return(@question)
    put_with_successful_update
  end

  it "should update the found question" do
    put_with_successful_update
    assigns(:question).should equal(@question)
  end

  it "should assign the found question for the view" do
    put_with_successful_update
    assigns(:question).should equal(@question)
  end

  it "should redirect to the question on successful update" do
    put_with_successful_update
    response.should be_redirect
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe QuestionsController, "handling DELETE /questions/1" do

  before do
    @question = mock_model(Question, :destroy => true)
    Question.stub!(:find).and_return(@question)

    login_as :instructor
    request.env["HTTP_REFERER"] = '/'
  end
  
  def do_delete
    delete :destroy, :id => "1"
  end

  it "should find the question requested" do
    Question.should_receive(:find).with("1").and_return(@question)
    do_delete
  end
  
  it "should call destroy on the found question" do
    @question.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the questions list" do
    do_delete
    response.should be_redirect
  end
end
