class RenameDepatureAirportIdToDepartureAirportId < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :depature_airport_id, :departure_airport_id
  end
end
