class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path, notice: '日誌が作成されました'
    else
      render :new
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:goal, :content_id, :review, :goal_completion)
  end
end
