class DocumentController < ApplicationController
	before_filter :login_required
	before_filter :verify_instructor, :except => :show

  def create
  end

  def save
		document = Document.new()

		document.label = params[:document][:label]
		document.uploaded_file = params[:document][:tmp_file]

		if document.save
			flash[:notice] = "Document saved successfully"
			redirect_to :controller => :instructor, :action => :list
		else
			flash[:notice] = "Document NOT saved successfully"
			redirect_to :action => :create
		end
  end

	def show
		@document = Document.find(params[:id])

		@response.headers['Pragma'] = ' '
		@response.headers['Cache-Control'] = ' '
		@response.headers['Content-type'] = @document.content_type
		@response.headers['Content-Disposition'] = "attachment; filename=#{@document.filename}" 
		@response.headers['Accept-Ranges'] = 'bytes'
		@response.headers['Content-Length'] = @document.content.length
		@response.headers['Content-Transfer-Encoding'] = 'binary'
		@response.headers['Content-Description'] = 'File Transfer'

		render_text @document.content
	end
end
