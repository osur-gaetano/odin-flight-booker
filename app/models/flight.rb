class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"


  def self.search(flight_params)
    if flight_params
      departure_airport = Airport.find_by(airport_code: flight_params[:departure_code])
      arrival_airport = Airport.find_by(airport_code: flight_params[:arrival_code])
      self.where(departure_airport_id: departure_airport.id).or(self.where(arrival_airport_id: arrival_airport.id))
    else
      @flights = Flight.all     
    end

    

  end


  def departure_code
    departure_airport.airport_code
  end

  def arrival_code
    arrival_airport.airport_code
  end
 

end
