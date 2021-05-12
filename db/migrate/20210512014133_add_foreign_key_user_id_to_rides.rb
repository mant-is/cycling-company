class AddForeignKeyUserIdToRides < ActiveRecord::Migration[6.1]
  def change
    add_reference :rides, :user, null: false, foreign_key: true
  end
end
