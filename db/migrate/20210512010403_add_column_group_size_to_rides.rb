class AddColumnGroupSizeToRides < ActiveRecord::Migration[6.1]
  def change
    add_column :rides, :group_size, :integer
  end
end
