class RemovePassangarsFromBooking < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :passanger, index:true, foreing_key: true
  end
end
