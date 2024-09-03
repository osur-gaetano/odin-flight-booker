class RemoveBookingFromFlight < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights, :booking_id, :bookings_id
    remove_reference :flights, :bookings, index:true, foreing_key: true
  end
end
