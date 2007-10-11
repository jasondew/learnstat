class QuestionsController < ApplicationController

  before_filter :require_instructor

  # GET /questions
  # GET /questions.xml
  def index
    @questions = Question.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @questions.to_xml }
    end
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @question.to_xml }
    end
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1;edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.xml
  def create
    @question = Question.new(params[:question])

    respond_to do |format|
      if @question.save
        flash[:notice] = 'Question was successfully created.'
        format.html { redirect_to question_url(@question) }
        format.xml  { head :created, :location => question_url(@question) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors.to_xml }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        flash[:notice] = 'Question was successfully updated.'
        format.html { redirect_to :back }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors.to_xml }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
end
