class GradesController < ApplicationController
  # GET /grades
  # GET /grades.xml
  def index
    @grades = Grade.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @grades.to_xml }
    end
  end

  # GET /grades/1
  # GET /grades/1.xml
  def show
    @grade = Grade.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @grade.to_xml }
    end
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1;edit
  def edit
    @grade = Grade.find(params[:id])
  end

  # POST /grades
  # POST /grades.xml
  def create
    @grade = Grade.new(params[:grade])

    respond_to do |format|
      if @grade.save
        flash[:notice] = 'Grade was successfully created.'
        format.html { redirect_to grade_url(@grade) }
        format.xml  { head :created, :location => grade_url(@grade) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @grade.errors.to_xml }
      end
    end
  end

  # PUT /grades/1
  # PUT /grades/1.xml
  def update
    @grade = Grade.find(params[:id])

    respond_to do |format|
      if @grade.update_attributes(params[:grade])
        flash[:notice] = 'Grade was successfully updated.'
        format.html { redirect_to grade_url(@grade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @grade.errors.to_xml }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.xml
  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy

    respond_to do |format|
      format.html { redirect_to grades_url }
      format.xml  { head :ok }
    end
  end
end
