class AddColumnsToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :departure_date, :date
    add_column :trips, :return_date, :date
  end
end
