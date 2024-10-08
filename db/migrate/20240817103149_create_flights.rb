class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false, foreign_key: {to_table: :airports}
      t.references :arrival_airport, null: false, foreign_key: {to_table: :airports}
      t.date :start_date
      t.time :flight_duration

      t.timestamps
    end
  end
end
