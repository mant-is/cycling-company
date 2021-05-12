class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.decimal :distance
      t.string :tempo
      t.string :type
      t.string :location
      t.date :date
      t.time :time
      t.integer :slots
      t.string :title

      t.timestamps
    end
  end
end
