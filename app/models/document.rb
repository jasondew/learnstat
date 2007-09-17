class Document < ActiveRecord::Base

	def uploaded_file=(incoming_file)
		self.filename = sanitize_filename( incoming_file.original_filename )
		self.content_type = incoming_file.content_type
		self.content = incoming_file.read
	end

	private

	def sanitize_filename(file_name)
		just_filename = File.basename(file_name) 
		just_filename.gsub(/[^\w\.\-]/, '_') 
	end

end
