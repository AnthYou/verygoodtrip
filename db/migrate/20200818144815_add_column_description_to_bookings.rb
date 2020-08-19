class AddColumnDescriptionToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :description, :string
  end
end
