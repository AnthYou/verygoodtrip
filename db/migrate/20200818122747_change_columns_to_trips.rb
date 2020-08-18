class ChangeColumnsToTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :departure_date
    remove_column :trips, :return_date
  end
end
