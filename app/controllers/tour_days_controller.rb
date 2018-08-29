class TourDaysController < ApplicationController
  def show
    @tour_day = TourDay.find params[:id]
  end
def create
     tour_day = TourDay.new
    tour_day.tour_id = params[:tour_id]
    tour_day.save
end
end
