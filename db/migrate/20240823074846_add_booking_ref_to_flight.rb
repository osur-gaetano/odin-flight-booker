class AddBookingRefToFlight < ActiveRecord::Migration[7.1]
  def change
    add_reference :flights, :booking, null: false, foreign_key: true
  end
end
