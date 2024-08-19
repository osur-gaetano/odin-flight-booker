class RenameStartDateToFlightDate < ActiveRecord::Migration[7.1]
  def change
    rename_column :flights , :start_date, :flight_date
  end
end
