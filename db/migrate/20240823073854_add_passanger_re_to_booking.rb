class AddPassangerReToBooking < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :passanger, null: false, foreign_key: {to_table: :users}
  end
end
