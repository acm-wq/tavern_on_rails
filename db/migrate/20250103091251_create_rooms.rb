class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.text :description
      t.integer :capacity, null: false, default: 1
      t.integer :price, null: false, default: 1

      t.timestamps
      t.integer :unix_time
    end
  end
end
