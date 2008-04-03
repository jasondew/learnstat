class DocumentsController < ApplicationController

  before_filter :require_instructor, :except => :show
  before_filter :get_course

  def index
  end

  def show
    @document = @course.documents.find params[:id]

    response.headers['X-Accel-Redirect'] = @document.full_filename
    response.headers['Content-Type'] = @document.content_type
    response.headers['Content-length'] = @document.size
    response.headers['Content-Disposition'] = %Q|attachment; filename="#{@document.filename}"|

    render :nothing => true
#    send_file @document.full_filename, :type => @document.content_type
  end

  def new
    @document = Document.new
  end

  def create
    @document = @course.documents.build params[:document]

    if @document.save
      flash[:notice] = 'Document was successfully created.'
      redirect_to course_documents_path(@course)
    else
      flash[:error] = 'Document was not saved.'
      render :action => "new"
    end
  end

  def destroy
    @document = @course.documents.find(params[:id])
    @document.destroy

    flash[:notice] = 'Document destroyed.'

    redirect_to course_path(@course)
  end

end
