require File.dirname(__FILE__) + '/../spec_helper'

describe "ExamCommons", :shared => true do
  before do
    @exam = mock_model(Exam)
    @exams = mock(Array)
    @course = mock_model(Course)

    @student = mock_model(User)
    @students = [@student]

    @grade = mock_model(Grade)
    @grades = [@grade]

    Course.stub!(:find).and_return(@course)

    @course.stub!(:exams).and_return(@exams)
    @course.stub!(:students).and_return(@students)

    @exams.stub!(:find).and_return(@exam)
    @exams.stub!(:build).and_return(@exam)

    @exam.stub!(:grades).and_return(@grades)
    @exam.stub!(:destroy)
    @grades.stub!(:build).and_return(@grade)

    login_as :instructor
  end
end


describe ExamsController, "handling GET /exams" do

  it_should_behave_like 'ExamCommons'

  def do_get
    get :index, :course_id => 1
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should render index template" do
    do_get
    response.should render_template('index')
  end
  
  it "should find all exams" do
    @course.should_receive(:exams).and_return(@exams)
    do_get
  end
  
  it "should assign the found exams for the view" do
    do_get
    assigns[:exams].should == @exams
  end
end

describe ExamsController, "handling GET /exams/1" do

  it_should_behave_like 'ExamCommons'

  def do_get
    get :show, :id => "1", :course_id => 1
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render show template" do
    do_get
    response.should render_template('show')
  end
  
  it "should find the exam requested" do
    @course.should_receive(:exams).and_return(@exams)
    @exams.should_receive(:find).and_return(@exam)
    do_get
  end
  
  it "should assign the found exam for the view" do
    do_get
    assigns[:exam].should equal(@exam)
  end
end

describe ExamsController, "handling GET /exams/new" do

  it_should_behave_like 'ExamCommons'

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
  
  it "should create an new exam" do
    @course.should_receive(:exams).and_return(@exams)
    @exams.should_receive(:build).and_return(@exam)
    do_get
  end
  
  it "should not save the new exam" do
    @exam.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new exam for the view" do
    do_get
    assigns[:exam].should equal(@exam)
  end
end

describe ExamsController, "handling GET /exams/1/edit" do

  it_should_behave_like 'ExamCommons'

  def do_get
    get :edit, :id => "1", :course_id => 1
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the exam requested" do
    @course.should_receive(:exams).and_return(@exams)
    @exams.should_receive(:find).and_return(@exam)
    do_get
  end
  
  it "should assign the found Exam for the view" do
    do_get
    assigns[:exam].should equal(@exam)
  end
end

describe ExamsController, "handling POST /exams" do

  it_should_behave_like 'ExamCommons'

  def post_with_successful_save
    @exam.should_receive(:save).and_return(true)
    post :create, :exam => {}, :course_id => 1
  end
  
  def post_with_failed_save
    @exam.should_receive(:save).and_return(false)
    post :create, :exam => {}, :course_id => 1
  end
  
  it "should create a new exam" do
    @exams.should_receive(:build).with({}).and_return(@exam)
    post_with_successful_save
  end

  it "should redirect to the new exam on successful save" do
    post_with_successful_save
    response.should redirect_to( course_path(@course.id) )
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe ExamsController, "handling PUT /exams/1" do

  it_should_behave_like 'ExamCommons'

  def put_with_successful_update
    @exam.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1", :course_id => 1
  end
  
  def put_with_failed_update
    @exam.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1", :course_id => 1
  end
  
  it "should find the exam requested" do
    @course.should_receive(:exams).and_return(@exams)
    @exams.should_receive(:find).with("1").and_return(@exam)
    put_with_successful_update
  end

  it "should update the found exam" do
    put_with_successful_update
    assigns(:exam).should equal(@exam)
  end

  it "should assign the found exam for the view" do
    put_with_successful_update
    assigns(:exam).should equal(@exam)
  end

  it "should redirect to the exam on successful update" do
    put_with_successful_update
    response.should redirect_to(course_path(@course.id))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe ExamsController, "handling DELETE /exams/1" do

  it_should_behave_like 'ExamCommons'

  def do_delete
    delete :destroy, :id => "1", :course_id => 1
  end

  it "should find the exam requested" do
    @course.should_receive(:exams).and_return(@exams)
    @exams.should_receive(:find).with("1").and_return(@exam)
    do_delete
  end
  
  it "should call destroy on the found exam" do
    @exam.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the exams list" do
    do_delete
    response.should redirect_to(course_path(@course))
  end
end
