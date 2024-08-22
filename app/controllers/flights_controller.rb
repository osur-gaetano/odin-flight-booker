class FlightsController < ApplicationController
  def index
    if params[:flight].nil?
      @flights = []
    else
    @flights = Flight.search(flight_params)
    end
  end

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :flight_date,:flight_duration,:flight, :departure_code, :arrival_code)
  end
end
