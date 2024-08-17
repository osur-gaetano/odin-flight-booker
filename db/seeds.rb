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
# 
[
  { departure_airport_id: 1, arrival_airport_id: 3, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 1, arrival_airport_id: 5, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 1, arrival_airport_id: 4, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},{ departure_airport_id: 1, arrival_airport_id: 5, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 2, arrival_airport_id: 1, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 2, arrival_airport_id: 6, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 3, arrival_airport_id: 7, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")},
  { departure_airport_id: 1, arrival_airport_id: 6, start_date: DateTime.new(2024,8,18,10,
  0,0), flight_duration: Time.parse("01:30")}
]. each do |flight_data|
  Flight.find_or_create_by!(flight_data)
end

# Flight.find_or_create_by([
#   { departure_airport_id: 1, arrival_airport_id: 3, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 5, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 4, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},{ departure_airport_id: 1, arrival_airport_id: 5, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 2, arrival_airport_id: 1, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 2, arrival_airport_id: 6, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 3, arrival_airport_id: 7, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")},
#   { departure_airport_id: 1, arrival_airport_id: 6, start_date: DateTime.new(2024,8,18,10,
#   0,0), flight_duration: Time.parse("01:30")}
# ])