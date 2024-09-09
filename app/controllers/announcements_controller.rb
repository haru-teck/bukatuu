class AnnouncementsController < ApplicationController
  before_action :authenticate_user!  # ログイン済みのユーザーのみアクセス可能
  before_action :set_announcement, only: [:show]

  def index
    @announcements = Announcement.all
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      redirect_to announcements_path, notice: 'お知らせが作成されました。'
    else
      render :new
    end
  end

  def show
    # 詳細画面のアクション
  end

  private

  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  def announcement_params
    params.require(:announcement).permit(:title, :explanation, images: [])
  end
end
