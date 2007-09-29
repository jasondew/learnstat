class QuestionChoicesController < ApplicationController

  before_filter :get_question

  # GET /question_choices/new
  def new
    @question_choice = QuestionChoice.new
  end

  # GET /question_choices/1;edit
  def edit
    @question_choice = @question.choices.find(params[:id])
  end

  # POST /question_choices
  # POST /question_choices.xml
  def create
    @question_choice = @question.choices.build params[:question_choice]

    respond_to do |format|
      if @question_choice.save
        flash[:notice] = 'QuestionChoice was successfully created.'
        format.html { redirect_to question_url(@question) }
        format.xml  { head :created, :location => question_url(@question) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_choice.errors.to_xml }
      end
    end
  end

  # PUT /question_choices/1
  # PUT /question_choices/1.xml
  def update
    @question_choice = @question.choices.find(params[:id])

    respond_to do |format|
      if @question_choice.update_attributes(params[:question_choice])
        flash[:notice] = 'QuestionChoice was successfully updated.'
        format.html { redirect_to question_url(@question) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_choice.errors.to_xml }
      end
    end
  end

  # DELETE /question_choices/1
  # DELETE /question_choices/1.xml
  def destroy
    @question_choice = @question.choices.find(params[:id])
    @question_choice.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
end
