class AnnouncementsController < ApplicationController

  before_filter :instructor_required
  before_filter :get_course

  # GET /announcements
  # GET /announcements.xml
  def index
    @announcements = @course.announcements

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @announcements.to_xml }
    end
  end

  # GET /announcements/1
  # GET /announcements/1.xml
  def show
    @announcement = @course.announcements.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @announcement.to_xml }
    end
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
        format.html { redirect_to announcement_url(@course, @announcement) }
        format.xml  { head :created, :location => announcement_url(@course, @announcement) }
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
        format.html { redirect_to announcement_url(@course, @announcement) }
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
      format.html { redirect_to announcements_url(@course) }
      format.xml  { head :ok }
    end
  end

end
