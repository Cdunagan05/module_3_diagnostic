class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :fuel_type
      t.integer :distance
      t.string :access_times

      t.timestamps null: false
    end
  end
end
