class QuestionResponsesController < ApplicationController
  # GET /question_responses
  # GET /question_responses.xml
  def index
    @question_responses = QuestionResponse.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @question_responses.to_xml }
    end
  end

  # GET /question_responses/1
  # GET /question_responses/1.xml
  def show
    @question_response = QuestionResponse.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @question_response.to_xml }
    end
  end

  # GET /question_responses/new
  def new
    @question_response = QuestionResponse.new
  end

  # GET /question_responses/1;edit
  def edit
    @question_response = QuestionResponse.find(params[:id])
  end

  # POST /question_responses
  # POST /question_responses.xml
  def create
    @question_response = QuestionResponse.new(params[:question_response])

    respond_to do |format|
      if @question_response.save
        flash[:notice] = 'QuestionResponse was successfully created.'
        format.html { redirect_to question_response_url(@question_response) }
        format.xml  { head :created, :location => question_response_url(@question_response) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_response.errors.to_xml }
      end
    end
  end

  # PUT /question_responses/1
  # PUT /question_responses/1.xml
  def update
    @question_response = QuestionResponse.find(params[:id])

    respond_to do |format|
      if @question_response.update_attributes(params[:question_response])
        flash[:notice] = 'QuestionResponse was successfully updated.'
        format.html { redirect_to question_response_url(@question_response) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_response.errors.to_xml }
      end
    end
  end

  # DELETE /question_responses/1
  # DELETE /question_responses/1.xml
  def destroy
    @question_response = QuestionResponse.find(params[:id])
    @question_response.destroy

    respond_to do |format|
      format.html { redirect_to question_responses_url }
      format.xml  { head :ok }
    end
  end
end
