class CreateAssignments < ActiveRecord::Migration[8.0]
  def change
    create_table :assignments do |t|
      t.references :users, null: false, foreign_key: true
      t.references :user_roles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
