class CalendarsController < ApplicationController
  before_action :set_calendar, only: %i[show edit update destroy]

  def events
    calendar = Calendar.find(params[:id])
    render json: calendar.events
  end

  
  def index
    @calendars = Calendar.all
  end

  def show
    @events = @calendar.events
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to @calendar, notice: 'Calendar was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @calendar.update(calendar_params)
      redirect_to @calendar, notice: 'Calendar was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @calendar.destroy
    redirect_to calendars_url, notice: 'Calendar was successfully destroyed.'
  end

  private

  def set_calendar
    @calendar = Calendar.find(params[:id])
  end

  def calendar_params
    params.require(:calendar).permit(:name, :description, :user_id)
  end
end
