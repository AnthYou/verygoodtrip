class AddUserTorips < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :user, index: true
  end
end
