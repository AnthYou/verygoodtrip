class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.string :destination
      t.string :tags
      t.integer :budget_min
      t.string :departure_date
      t.string :return_date
      t.integer :capacity

      t.timestamps
    end
  end
end
