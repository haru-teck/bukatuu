class AnnouncementsController < ApplicationController
  
  def index
    @announcements = Announcement.all
  end

  def new
    @announcement = Announcement.new
  end
  
  
  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      redirect_to @announcement, notice: 'Announcement was successfully created.'
    else
      render :new
    end
  end
  
  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update(announcement_params)
      redirect_to @announcement, notice: 'Announcement was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @announcement = Announcement.find(params[:id])
  end
  
  private
  
  def announcement_params
    params.require(:announcement).permit(:title, :explanation, images: [])
  end
end