class AnnouncementsController < ApplicationController

  before_filter :require_instructor, :except => [:index, :show]
  before_filter :get_course

  def index
    @announcements = @course.announcements
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1;edit
  def edit
    @announcement = @course.announcements.find(params[:id])
  end

  # POST /announcements
  # POST /announcements.xml
  def create
    @announcement = @course.announcements.build params[:announcement].merge( { :user_id => current_user.id } )

    respond_to do |format|
      if @announcement.save
        flash[:notice] = 'Announcement was successfully created.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :created, :location => course_path(@course) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @announcement.errors.to_xml }
      end
    end
  end

  # PUT /announcements/1
  # PUT /announcements/1.xml
  def update
    @announcement = @course.announcements.find(params[:id])

    respond_to do |format|
      if @announcement.update_attributes(params[:announcement])
        flash[:notice] = 'Announcement was successfully updated.'
        format.html { redirect_to course_path(@course) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @announcement.errors.to_xml }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.xml
  def destroy
    @announcement = @course.announcements.find(params[:id])
    @announcement.destroy

    respond_to do |format|
      format.html { redirect_to course_path(@course) }
      format.xml  { head :ok }
    end
  end

end
