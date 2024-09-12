class CalendarsController < ApplicationController
  
  def index

      @current_date = Date.today
      @calendars = (Date.new(@current_date.year, @current_date.month, 1)..Date.new(@current_date.year, @current_date.month, -1)).to_a
    end
end

  