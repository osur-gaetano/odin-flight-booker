class RemoveNumberOfPassangersFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :number_of_passangers
  end
end
