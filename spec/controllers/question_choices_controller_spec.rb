require File.dirname(__FILE__) + '/../spec_helper'

describe QuestionChoicesController, "#route_for" do

  it "should map { :controller => 'question_choices', :action => 'new' } to /questions/2/question_choices/new" do
    route_for(:controller => "question_choices", :action => "new", :question_id => "2").should == "/questions/2/question_choices/new"
  end
  
  it "should map { :controller => 'question_choices', :action => 'show', :id => 1 } to /questions/2/question_choices/1" do
    route_for(:controller => "question_choices", :action => "show", :question_id => "2", :id => 1).should == "/questions/2/question_choices/1"
  end
  
  it "should map { :controller => 'question_choices', :action => 'edit', :id => 1 } to /questions/2/question_choices/1/edit" do
    route_for(:controller => "question_choices", :action => "edit", :question_id => "2", :id => 1).should == "/questions/2/question_choices/1/edit"
  end
  
  it "should map { :controller => 'question_choices', :action => 'update', :id => 1} to /questions/2/question_choices/1" do
    route_for(:controller => "question_choices", :action => "update", :question_id => "2", :id => 1).should == "/questions/2/question_choices/1"
  end
  
  it "should map { :controller => 'question_choices', :action => 'destroy', :id => 1} to /questions/2/question_choices/1" do
    route_for(:controller => "question_choices", :action => "destroy", :question_id => "2", :id => 1).should == "/questions/2/question_choices/1"
  end
  
end

describe QuestionChoicesController, "#params_from" do

  it "should generate params { :controller => 'question_choices', action => 'new' } from GET /questions/2/question_choices/new" do
    params_from(:get, "/questions/2/question_choices/new").should == {:controller => "question_choices", :action => "new", :question_id => "2"}
  end
  
  it "should generate params { :controller => 'question_choices', action => 'create' } from POST /questions/2/question_choices" do
    params_from(:post, "/questions/2/question_choices").should == {:controller => "question_choices", :action => "create", :question_id => "2"}
  end
  
  it "should generate params { :controller => 'question_choices', action => 'show', id => '1' } from GET /questions/2/question_choices/1" do
    params_from(:get, "/questions/2/question_choices/1").should == {:controller => "question_choices", :action => "show", :question_id => "2", :id => "1", :question_id => "2"}
  end
  
  it "should generate params { :controller => 'question_choices', action => 'edit', id => '1' } from GET /questions/2/question_choices/1;edit" do
    params_from(:get, "/questions/2/question_choices/1/edit").should == {:controller => "question_choices", :action => "edit", :question_id => "2", :id => "1", :question_id => "2"}
  end
  
  it "should generate params { :controller => 'question_choices', action => 'update', id => '1' } from PUT /questions/2/question_choices/1" do
    params_from(:put, "/questions/2/question_choices/1").should == {:controller => "question_choices", :action => "update", :question_id => "2", :id => "1", :question_id => "2"}
  end
  
  it "should generate params { :controller => 'question_choices', action => 'destroy', id => '1' } from DELETE /questions/2/question_choices/1" do
    params_from(:delete, "/questions/2/question_choices/1").should == {:controller => "question_choices", :action => "destroy", :question_id => "2", :id => "1", :question_id => "2"}
  end
  
end

describe QuestionChoicesController, "handling GET /question_choices/new" do

  before do
    @question_choice = mock_model(QuestionChoice)
    QuestionChoice.stub!(:new).and_return(@question_choice)

    login_as :instructor
  end
  
  def do_get
    get :new, :question_id => 2
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render new template" do
    do_get
    response.should render_template('new')
  end
  
  it "should create an new question_choice" do
    QuestionChoice.should_receive(:new).and_return(@question_choice)
    do_get
  end
  
  it "should not save the new question_choice" do
    @question_choice.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new question_choice for the view" do
    do_get
    assigns[:question_choice].should equal(@question_choice)
  end
end

describe QuestionChoicesController, "handling GET /question_choices/1/edit" do

  before do
    @question_choice = mock_model(QuestionChoice)
    QuestionChoice.stub!(:find).and_return(@question_choice)

    login_as :instructor
  end
  
  def do_get
    get :edit, :id => "1", :question_id => "2"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the question_choice requested" do
    QuestionChoice.should_receive(:find).and_return(@question_choice)
    do_get
  end
  
  it "should assign the found QuestionChoice for the view" do
    do_get
    assigns[:question_choice].should equal(@question_choice)
  end
end

describe QuestionChoicesController, "handling POST /question_choices" do

  before do		login_as :instructor
    @question_choice = mock_model(QuestionChoice, :to_param => "1")
    QuestionChoice.stub!(:new).and_return(@question_choice)

    @question = mock_model(Question, :to_param => "2")
    Question.stub!(:find).and_return(@question)

    @choices = mock(Array)
    @choices.should_receive(:build).and_return(@question_choice)
    @question.should_receive(:choices).and_return(@choices)

    login_as :instructor
  end
  
  def post_with_successful_save
    @question_choice.should_receive(:save).and_return(true)
    post :create, :question_choice => {}, :question_id => 2
  end
  
  def post_with_failed_save
    @question_choice.should_receive(:save).and_return(false)
    post :create, :question_choice => {}, :question_id => 2
  end
  
  it "should create a new question_choice" do
    post_with_successful_save
  end

  it "should redirect to the new question_choice on successful save" do
    post_with_successful_save
    response.should redirect_to(question_path(2))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe QuestionChoicesController, "handling PUT /question_choices/1" do

  before do
    @question_choice = mock_model(QuestionChoice, :to_param => "1")
    QuestionChoice.stub!(:find).and_return(@question_choice)

    @question = mock_model(Question, :to_param => "2")
    Question.stub!(:find).and_return(@question)

    @choices = mock(Array)
    @choices.should_receive(:find).and_return(@question_choice)
    @question.should_receive(:choices).and_return(@choices)

    login_as :instructor
  end
  
  def put_with_successful_update
    @question_choice.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1", :question_id => "2"
  end
  
  def put_with_failed_update
    @question_choice.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1", :question_id => "2"
  end
  
  it "should find the question_choice requested" do
    put_with_successful_update
  end

  it "should update the found question_choice" do
    put_with_successful_update
    assigns(:question_choice).should equal(@question_choice)
  end

  it "should assign the found question_choice for the view" do
    put_with_successful_update
    assigns(:question_choice).should equal(@question_choice)
  end

  it "should redirect to the question_choice on successful update" do
    put_with_successful_update
    response.should redirect_to(question_path(2))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe QuestionChoicesController, "handling DELETE /question_choices/1" do

  before do
    @question_choice = mock_model(QuestionChoice, :destroy => true)
    QuestionChoice.stub!(:find).and_return(@question_choice)

    login_as :instructor
  end
  
  def do_delete
    request.env["HTTP_REFERER"] = "/questions/2"
    delete :destroy, :id => "1", :question_id => "2"
  end

  it "should find the question_choice requested" do
    do_delete
  end
  
  it "should call destroy on the found question_choice" do
    @question_choice.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the question_choices list" do
    do_delete
    response.should redirect_to(question_path(2))
  end
end
