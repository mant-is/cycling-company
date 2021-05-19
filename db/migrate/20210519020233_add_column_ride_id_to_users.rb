class AddColumnRideIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ride_id, :bigint
  end
end
