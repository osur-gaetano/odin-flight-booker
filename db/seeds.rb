# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds for airports table

["NYC", "CAL", "AUX", "PHX","TX","LA","VA"].each do |airport_code|
       Airport.find_or_create_by!(airport_code: airport_code)
     end





# Seeds for the flight table

5.times do
  Flight.create!(
    departure_airport: Airport.all.sample,
    arrival_airport: Airport.all.sample,
    flight_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30),
    flight_duration: rand(60..360)
  )
end



# [
#   { departure_airport_id: 1, arrival_airport_id: 3, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 5, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 4, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},{ departure_airport_id: 1, arrival_airport_id: 5, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 2, arrival_airport_id: 1, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 2, arrival_airport_id: 6, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 3, arrival_airport_id: 7, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 6, flight_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")}
# ]. each do |flight_data|
#   Flight.find_or_create_by!(flight_data)
# end

