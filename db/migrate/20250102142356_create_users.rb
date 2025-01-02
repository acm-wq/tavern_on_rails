class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :username, null: false

      t.timestamps
      t.integer :unix_time

      t.index :email, unique: true
      t.index :username, unique: true
    end
  end
end
