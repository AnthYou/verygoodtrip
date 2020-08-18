class ChangeColumnDescriptionTypeToTextInBookingsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :description, :text
  end
end
