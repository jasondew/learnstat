class DocumentsController < ApplicationController

  before_filter :require_instructor, :except => :show
  before_filter :get_course

  def index
  end

  def show
    @document = @course.documents.find(params[:id])
    send_file @document.full_filename, :type => @document.content_type
  end

  def new
    @document = Document.new
  end

  def edit
    @document = @course.documents.find(params[:id])
  end

  def create
    @document = @course.documents.build params[:document]

    respond_to do |format|
      if @document.save
        flash[:notice] = 'Document was successfully created.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :created, :location => course_path(@course) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors.to_xml }
      end
    end
  end

  def update
    @document = @course.documents.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        flash[:notice] = 'Document was successfully updated.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @document.errors.to_xml }
      end
    end
  end

  def destroy
    @document = @course.documents.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to course_path(@course) }
      format.xml  { head :ok }
    end
  end

end
