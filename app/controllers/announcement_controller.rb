class AnnouncementController < ApplicationController
	before_filter :login_required
	before_filter :verify_instructor

  def create
  end

	def save
		announcement = Announcement.new(params[:announcement])
		announcement.user_id = session[:user].id

		if announcement.save
			flash[:notice] = "Announcement successfully saved."
			redirect_to :controller => :instructor, :action => :list
		else
			flash[:notice] = "Unable to save the announcement."
			redirect_to :action => :create
		end
	end

end
