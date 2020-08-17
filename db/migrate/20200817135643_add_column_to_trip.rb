class AddColumnToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :budget_max, :integer
  end
end
