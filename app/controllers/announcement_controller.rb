class AnnouncementController < ApplicationController
	before_filter :login_required
	before_filter :verify_instructor

  def new
    @announcement = Announcement.new params[:announcement]
    return unless request.post?

		if @announcement.save
			flash[:notice] = "Announcement successfully saved."
			redirect_to :controller => :instructor
		else
			flash[:notice] = "Unable to save the announcement."
		end
	end

end
